class DesktopsController < ApplicationController
  load_and_authorize_resource
  def index
    @desktops = Desktop.all
  end

  def new
    @desktop = Desktop.new
  end 

  def edit
    @desktop = Desktop.find(params[:id])
  end
  
  def show
    @desktop = Desktop.find(params[:id])
  end

  def create
    @desktop = Desktop.new(desktop_params)  
    if(@desktop.save)
      redirect_to @desktop
    else
      render 'new'
    end
  end


  def update
    @desktop = Desktop.find(params[:id])
    
    if @desktop.update(desktop_params)
      redirect_to @desktop
    else
      render 'edit'
    end
  end

  def destroy
    @desktop = Desktop.find(params[:id])
    @desktop.destroy
    
    redirect_to desktops_path
  end

  private
    def desktop_params
      params.require(:desktop).permit(:emp_id, :asset_num,:name,:MAC_address,:comment)
    end
end
