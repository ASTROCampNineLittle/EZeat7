class PaymentsController < ApplicationController

  def index
    @orders = Order.all
  end
  
  def new
    @form_info = Newebpay::Mpgpost.new.form_info
  end
  
  def create
  end

  def show
  end
  

end
