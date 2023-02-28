class ClubsController < ApplicationController
  before_action :set_club, only: %i[show edit update destroy]
  def show
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    @club.user = current_user
    if @club.save
      redirect_to club_path(@club)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @club.update(club_params)
      redirect_to club_path(@club)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @club.destroy
    redirect_to dashboard_path
  end

  private

  def club_params
    params.require(:club).permit(:name, :address, :description, :phone_number, :category, :capacity, :hour_price, :photo)
  end

  def set_club
    @club = Club.find(params[:id])
  end
end
