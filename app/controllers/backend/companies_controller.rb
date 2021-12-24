class Backend::CompaniesController < ApplicationController

  layout "backend"

  def new
    @company = Company.new
  end

  def create
    company = Company.new(company_params)

    if company.save
      redirect_to backend_company_path(company), notice: '新增公司成功'
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    company = Company.new(company_params)

    if company.update(company_params)
      redirect_to backend_company_path(company), notice: '修改公司成功'
    else
      render :edit
    end
  end

  private
  def company_params
    params.require(:company).permit(:name, :address, :tele, :manager_name )
  end

end