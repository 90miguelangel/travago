class TravelersController < ApplicationController

  before_action :get_traveler, only: [:edit, :update, :show, :destroy]

  def get_traveler
    @traveler = Traveler.find( params[:id])
  end

  def index
    @travelers = Traveler.all
  end

  def show
  end

  def new
    @traveler = Traveler.new
  end

  def create
    @traveler = Traveler.new travelers_params
    if @traveler.save
      redirect_to travelers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @traveler.update travelers_params
      redirect_to travelers_path
    else
      render :edit
    end
  end

  def destroy
    @traveler.destroy
    redirect_to travelers_path
  end

  def travelers_params
    params.required(:traveler).permit(:name)
  end

end