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
    if params[:cpu] == 1
      @products = Cpu.where("name LIKE ?", "%#{params[:keywords]}%")
    elsif params[:ram] == 1
      @products = Ram.where("name LIKE ?", "%#{params[:keywords]}%")
    else
      cpu = Cpu.where("name LIKE ?", "%#{params[:keywords]}%")
      ram = Ram.where("name LIKE ?", "%#{params[:keywords]}%")
      @products = cpu + ram
    end
  end
end
