class LaptopsController < ApplicationController
  load_and_authorize_resource
  def index
    @laptops = Laptop.all
  end

  def new
    @laptop = Laptop.new
  end 

  def edit
    @laptop = Laptop.find(params[:id])
  end
  
  def show
    @laptop = Laptop.find(params[:id])
  end

  def create
    @laptop = Laptop.new(laptop_params)  
    if(@laptop.save)
      redirect_to @laptop
    else
      render 'new'
    end
  end


  def update
    @laptop = Laptop.find(params[:id])
    
    if @laptop.update(laptop_params)
      redirect_to @laptop
    else
      render 'edit'
    end
  end

  def destroy
    @laptop = Laptop.find(params[:id])
    @laptop.destroy
    redirect_to laptops_path
  end

  private
    def laptop_params
      params.require(:laptop).permit(:emp_id, :asset_num,:name,:MAC_address,:charger_num,:comment, {images: []})
    end
end
