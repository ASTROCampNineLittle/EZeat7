class Backend::CompaniesController < ApplicationController

  layout "backend"

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to backend_company_path(params[:id]), notice: '新增公司成功'
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  private
  def company_params
    params.require(:company).permit(:name, :address, :tele, :manager_name )
  end

end