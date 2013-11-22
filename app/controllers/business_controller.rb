class BusinessController < ApplicationController
  def index
    @cpus = Cpu.all
  end

  def show
    if params[:type] == "cpu"
      @product = Cpu.find(params[:id])
    end
  end
end
