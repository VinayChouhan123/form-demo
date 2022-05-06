class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)  
    if @admin.save
      redirect_to admins_path
    else
      render :new
    end
  end

  def admin_params
    params.require(:admin).permit(:name, :email)
  end
end
