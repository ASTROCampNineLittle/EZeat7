class Users::ProfileController < Devise::SessionsController

  layout "frontend"

  def show
    @profile = User.findby(params[:id])
  end
  
end
