class Backend::StoresController < ApplicationController
  
  layout "backend"

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)

    if @store.save
      redirect_to backend_company_stores_path(params[:company_id]), notice: '新增分店成功'
    else
      render :new
    end
  end

  def update
  end

  private
  def store_params
    params.require(:store).permit(:name, :type, :tel, :email, :intro )
  end

end
