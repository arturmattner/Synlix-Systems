class BusinessController < ApplicationController
  def index
    @cpu_products = Cpu.all
    @ram_products = Ram.all
  end
end
