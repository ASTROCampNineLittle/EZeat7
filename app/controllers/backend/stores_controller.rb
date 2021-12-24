class Backend::StoresController < ApplicationController
  
  layout "backend"


  def index
    @company = Company.find(params[:company_id])
    @stores = @company.stores.all
  end

  def new
    @store = Store.new
  end

  def create
    @company = Company.find(params[:company_id])
    @store = @company.stores.create(store_params)

    if @store.save
      redirect_to backend_company_stores_path(params[:company_id]), notice: '新增分店成功'
    else
      render :new
    end
  end

  def edit
    @store = Store.find(params[:id])
    
  end

  def update
    @store = Store.find(params[:id])

    if @store.update(store_params)
      redirect_to backend_company_stores_path(params[:id]), notice: '修改分店成功'
    else
      render :edit
    end
  end

  def destroy
    store = Store.find(params[:id])
    store.destroy
    redirect_to backend_company_stores_path(params[:id]), notice: '刪除成功'
  end


  private
  def store_params
    params.require(:store).permit(:name, :food_type, :tel, :email, :intro )
  end


end
