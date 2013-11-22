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
end
