class BookingsController < ApplicationController

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
    # params[:nb_guests].nil? || params[:nb_guests] == "" ? @nb_guests : @nb_guests = params[:nb_guests]
    @nb_guests = params[:nb_guests]
    params[:arrival_date].nil? || params[:arrival_date] == "" ? @arrival_date = Date.today + 1 : @arrival_date = params[:arrival_date].to_date
    params[:leaving_date].nil? || params[:leaving_date] == "" ? @leaving_date = @arrival_date + 3 : @leaving_date = params[:leaving_date].to_date
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = @booking.flat
    @nb_guests = @booking.nb_guests
    @booking.arrival_date.nil? ? @arrival_date = Date.today + 1 : @arrival_date = @booking.arrival_date.to_date
    @booking.leaving_date.nil? ? @leaving_date = @arrival_date + 3 : @leaving_date = @booking.leaving_date.to_date
    if @booking.save
      redirect_to flats_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flat_id, :user_id, :nb_guests, :arrival_date, :leaving_date)
  end
end
