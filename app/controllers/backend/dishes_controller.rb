class Backend::DishesController < ApplicationController

    
  layout "backend"


  def index
    @store = Store.find(params[:store_id])
    @dishes = @store.dishes.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @store = Store.find(params[:store_id])
    @dish = @store.dishes.create(dish_params)

    if @dish.save
      redirect_to backend_store_dishes_path(params[:store_id]), notice: '新增方案成功'
    else
      render :new
    end
  end

  def edit
    @dish = Dish.find(params[:id])
    
  end

  def update
    @dish = Dish.find(params[:id])

    if @dish.update(dish_params)
      redirect_to backend_store_dishes_path(@dish.store), notice: '修改方案成功'
    else
      render :edit
    end
  end

  def destroy
    dish = Dish.find(params[:id])
    origin_store = dish.store
    dish.destroy
    redirect_to backend_store_dishes_path(origin_store), notice: '刪除成功'
  end


  private
  def dish_params
    params.require(:dish).permit(:name, :price, :start_date, :end_date, :status, :intro )
  end

end

