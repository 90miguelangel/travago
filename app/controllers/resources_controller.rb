class ResourcesController < ApplicationController

  before_action :get_resource, only: [:edit, :update, :show, :destroy]

  def get_resource
    @resource = Resource.find( params[:id] )
  end

  def show
  end

  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new  resources_params
    if @resource.save
      redirect_to resources_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @resource.update resources_params
        redirect_to resources_path
    else
      render :edit
    end
  end

  def destroy
    @resource.destroy
    redirect_to resources_path
  end

  def resources_params
    params.require(:resource).permit(:resource_type_id, :name, :price)
  end

end