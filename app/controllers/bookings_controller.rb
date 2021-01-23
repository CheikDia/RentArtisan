class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @skill = Skill.find(params[:skill_id])
    @booking.user = current_user
    @booking.skill = @skill
    if @booking.save
      #redirect_to skill_path(@skill)
      redirect_to dashboard_path(@skill)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
