class BusinessController < ApplicationController
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

  def search
    
  end

  def cart
    
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
end
