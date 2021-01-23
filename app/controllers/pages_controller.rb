class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @skills = current_user.skills
    @bookings = current_user.bookings
    @bookings_as_owner = current_user.bookings_as_owner

  end

  # def booking_confirmed

  #   @bookings = bookings.where(confirmed: true)
  # end

  # def booking_waiting
  #   @bookings = current_user.bookings
  #   @bookings = bookings.where(confirmed: false)
  # end
end
