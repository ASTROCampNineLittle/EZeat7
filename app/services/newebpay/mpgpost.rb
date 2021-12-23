module Newebpay
  class Mpgpost

    attr_accessor :info
    # 4000-2211-1111-1111（一次付清測試卡號）
    
    def initialize
      @key = "I2aNLz8ZvTIoZ0dFmdUoiuZnHOLXOuRb"
      @iv = "CsgvvcZDk7x1OkcP"
      @merchant_id = "MS328690401"
      @info = {}
      set_info()
    end

    def form_info 
      {
        MerchantID: @merchant_id,
        TradeInfo: trade_info,
        TradeSha: trade_sha,
        Version: "1.5"
      }
    end

    private
    
    
    def set_info()
      
      @info[:MerchantID] = @merchant_id
      @info[:MerchantOrderNo] = "ezeat20210019"
      @info[:Amt] = 100
      @info[:ItemDesc] = "5x餐卷好好吃"
      @info[:Email] = "dreamorange830@gmail.com"
      # info[:MerchantOrderNo] = order.slug
      # info[:Amt] = order.amount
      # info[:ItemDesc] = order.name 
      # info[:Email] = order.email 
      @info[:TimeStamp] = Time.now.to_i 
      @info[:RespondType] = "JSON"
      @info[:Version] = "1.5"
      # request
      @info[:ReturnURL] = "http://localhost:3000/checks"
      @info[:NotifyURL] = ""
      @info[:LoginType] = 0 
      @info[:CREDIT] =  1,
      @info[:VACC] = 1
    end
    
    def trade_info
      aes_encode(url_encoded_query_string)
    end

    def trade_sha
      sha256_encode(@key, @iv, trade_info)
    end

    def url_encoded_query_string
      URI.encode_www_form(info)
    end

    def aes_encode(string)
      cipher = OpenSSL::Cipher::AES256.new(:CBC)
      cipher.encrypt
      cipher.key = @key
      cipher.iv = @iv
      cipher.padding = 0
      padding_data = add_padding(string)
      encrypted = cipher.update(padding_data) + cipher.final
      encrypted.unpack('H*').first
    end

    def add_padding(data, block_size = 32)
      pad = block_size - (data.length % block_size)
      data + (pad.chr * pad)
    end

    def sha256_encode(key, iv, trade_info)
      encode_string = "HashKey=#{key}&#{trade_info}&HashIV=#{iv}"
      Digest::SHA256.hexdigest(encode_string).upcase
    end
  end
end

# # 即時付款完成後，以 form post 方式要導回的頁面
# ReturnURL: "支付完成，返回商店頁面"
# # 訂單完成後，以背景 post 回報訂單狀況
# NotifyURL: "處理訂單的網址"

# # ----選填區-----
#   LINEPAY: 1,
#   OrderComment: "字數上限300字,可以帶入資料庫的餐卷資訊"
#   ClientBackURL: "返回上一頁的網址"
# # ----選填區-----

