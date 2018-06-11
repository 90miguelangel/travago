class ResourceTypesController < ApplicationController

  before_action :get_resource_type, only: [:edit, :update, :show, :destroy]

  def get_resource_type
    @resource_type = ResourceType.find( params[:id] )
  end

  def index
    @resource_types = ResourceType.all
  end

  def show
  end

  def new
    @resource_type = ResourceType.new
  end

  def create
    @resource_type = ResourceType.new resource_types_params
    if @resource_type.save
      redirect_to resource_types_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @resource_type.update resource_types_params
      redirect_to resource_types_path
    else
      render :edit
    end
  end

  def destroy
    @resource_type.destroy
    redirect_to resource_types_path
  end

  def resource_types_params
    params.required(:resource_type).permit(:name)
  end
end