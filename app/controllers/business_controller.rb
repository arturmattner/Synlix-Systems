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
    @cpus = Cpu.where("name LIKE ?", "%#{params[:keywords]}%")
  end
end
