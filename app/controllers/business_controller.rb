class BusinessController < ApplicationController
  def index
    @cpus = Cpu.all
    @rams = Ram.all
  end

  def show
    if params[:type] == "cpu"
      @product = Cpu.find(params[:id])
    elsif params[:type] == "ram"
      @product = Ram.find(params[:id])
    end
  end

  def search
    
  end

  def search_results
    if params[:cpu] == "cpu" && params[:ram] == "ram"
      cpu = Cpu.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      ram = Ram.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      @products = cpu + ram
    elsif params[:ram] == "ram"
      @products = Ram.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
    elsif params[:cpu] == "cpu"

      @products = Cpu.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
    else
      cpu = Cpu.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      ram = Ram.where("name LIKE ?", "%#{params[:keywords]}%").order(:name)
      @products = cpu + ram
    end
  end
end
