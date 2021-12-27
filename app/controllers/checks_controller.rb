class ChecksController < ApplicationController
  
  def index
  end

  def show
    @user = User.find(1)
  end

  
end
