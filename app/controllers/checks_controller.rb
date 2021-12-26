class ChecksController < ApplicationController
  
  skip_before_action :verify_authenticity_token, :only => [:create]

  def index
  end

  def show
  end
  
  def create
    @response = Newebpay::Mpgresponse.new(params[:TradeInfo])
    
    @order = Order.find_by(MerchanOrderNo: response.result[:MerchantOrderNo])
                  .update(card_4no: response.result[:Card4no], 
                          Paytime: response.result[:Paytime], 
                          TradeNo: response.result[:TradeNo],)
  end

end
