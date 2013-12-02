class BusinessController < ApplicationController

  before_filter :initialize_session

  def index
    @cpus = Cpu.order("updated_at DESC").limit(3)
    @rams = Ram.order("updated_at DESC").limit(3)
    @gfxes = Gfx.order("updated_at DESC").limit(3)
  end

  def product
    @cpus = Cpu.order(:name).page(params[:page]).per(9)
    @rams = Ram.order(:name).page(params[:page]).per(9)
    @gfxes = Gfx.order(:name).page(params[:page]).per(9)
  end

  def show
    if params[:type] == "cpu"
      @product = Cpu.find(params[:id])
    elsif params[:type] == "ram"
      @product = Ram.find(params[:id])
    elsif params[:type] == "gfx"
      @product = Gfx.find(params[:id])
    end
  end

  def add_cart
    session[:type] << params[:type]
    session[:id] << params[:id].to_i
    redirect_to(:back)
  end

  def about
    @page = Page.where(:title => 'About').first
  end

  def contact
    @page = Page.where(:title => 'Contact').first
  end

  def remove_cart
    reset_session
    redirect_to(:back)
  end

  def search_results
    if params[:cpu] == "cpu" && params[:ram] == "ram" && params[:gfx] == "gfx"
      cpu = Cpu.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      ram = Ram.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      gfx = Gfx.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      @products = cpu + ram + gfx
    elsif params[:ram] == "ram"
      @products = Ram.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
    elsif params[:cpu] == "cpu"
      @products = Cpu.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
    elsif params[:gfx] == "gfx"
      @products = Gfx.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
    else
      cpu = Cpu.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      ram = Ram.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      gfx = Gfx.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      @products = cpu + ram + gfx
    end
  end

  def search
    
  end

  def cart
    @customer = Customer.new
    @provinces = Province.all
  end

  def checkout
    @customer = Customer.create(params[:customer])
    @order = @customer.orders.build
    @order.pst_rate = @customer.province.pst
    @order.gst_rate = @customer.province.gst
    @order.hst_rate = @customer.province.hst
    @order.status = "New"
    @order.save

    @products.each do |item|
      lineitem = @order.lineitems.build
      if item.type == "cpu"
        lineitem.cpu_id = item.id
        lineitem.ram_id = nil
        lineitem.gfx_id = nil
        lineitem.price = item.price
      elsif item.type == "ram"
        lineitem.ram_id = item.id
        lineitem.cpu_id = nil
        lineitem.gfx_id = nil
        lineitem.price = item.price
      elsif item.type == "gfx"
        lineitem.gfx_id = item.id
        lineitem.ram_id = nil
        lineitem.cpu_id = nil
        lineitem.price = item.price
      end
      lineitem.save
    end

    redirect_to :action => :index
  end

protected

  def initialize_session
    session[:type] ||= []
    session[:id] ||= []
    @products = []
    @total = 0.00
    counter = 0
    session[:type].each do |product|
      if product == "cpu"
        @products << Cpu.find(session[:id][counter].to_i)
        @total += Cpu.find(session[:id][counter].to_i).price.round(2)
      elsif product == "ram"
        @products << Ram.find(session[:id][counter].to_i)
        @total += Ram.find(session[:id][counter].to_i).price.round(2)
      elsif product == "gfx"
        @products << Gfx.find(session[:id][counter].to_i)
        @total += Gfx.find(session[:id][counter].to_i).price.round(2)
      end
      counter += 1
    end
  end

end