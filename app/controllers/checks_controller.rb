class ChecksController < ApplicationController
  
  skip_before_action :verify_authenticity_token, :only => [:create]

  def index
  end

  def show
  end
  
  def create
    @response = Newebpay::Mpgresponse.new(params[:TradeInfo])
    # render html:response.result
    # @Order = Order.new(response)
    # if Newebpay::Mpgresponse.new(params).success?
      # if response.status === "SUCCESS"
      #   flash.now[:notice] = "購買票卷成功！"    
        # t.integer :user_id
        # t.integer :reserve_id
        # t.string :name
        # t.string :tel
        # t.string :email
        # t.string :ItemDesc
        # t.date :reserve_date
        # t.time :reserve_time
        # t.integer :use_status
        # t.integer :order_status
        # t.date :Paytime
        # t.string :MerchanOrderNo
        # t.integer :TradeNo
        # t.integer :Amt
        # t.integer :card4No

        # order = Order.find_by(slug: response.result[:MerchantOrderNo]).update(card_4no: response.result[:Card4no], )
      # else
      #   flash.now[:notice] = "購買票卷失敗！"  
      # end
  end

end
