class ChecksController < ApplicationController
  
<<<<<<< HEAD
  skip_before_action :verify_authenticity_token, :only => [:create]

=======
>>>>>>> e935b7d (feat/view_booking)
  def index
  end

  def show
  end
<<<<<<< HEAD
  
  def create
    @response = Newebpay::Mpgresponse.new(params[:TradeInfo])
    
    @order = Order.find_by(MerchanOrderNo: response.result[:MerchantOrderNo])
                  .update(card_4no: response.result[:Card4no], 
                          Paytime: response.result[:Paytime], 
                          TradeNo: response.result[:TradeNo],)
  end
=======
>>>>>>> e935b7d (feat/view_booking)

end
