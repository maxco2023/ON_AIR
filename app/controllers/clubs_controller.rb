class ClubsController < ApplicationController
  before_action :set_club, only: %i[show edit update destroy]

  def show
    authorize @club
  end

  def new
    @club = Club.new
    authorize @club
  end

  def create
    @club = Club.new(club_params)
    @club.user = current_user
    authorize @club
    if @club.save
      redirect_to club_path(@club)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @club
  end

  def update
    authorize @club
    if @club.update(club_params)
      redirect_to club_path(@club)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @club
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
