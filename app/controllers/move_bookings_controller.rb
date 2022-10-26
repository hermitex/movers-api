class MoveBookingsController < ApplicationController
  before_action :set_move_booking, only: %i[ show update destroy ]

  # GET /move_bookings
  def index
    @move_bookings = MoveBooking.all

    render json: @move_bookings
  end

  # GET /move_bookings/1
  def show
    render json: @move_booking
  end

  # POST /move_bookings
  def create
    @move_booking = MoveBooking.new(move_booking_params)

    if @move_booking.save
      render json: @move_booking, status: :created, location: @move_booking
    else
      render json: @move_booking.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /move_bookings/1
  def update
    if @move_booking.update(move_booking_params)
      render json: @move_booking
    else
      render json: @move_booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /move_bookings/1
  def destroy
    @move_booking.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_move_booking
      @move_booking = MoveBooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def move_booking_params
      params.require(:move_booking).permit(:earliest_date, :latest_date, :status, :customer_id, :mover_id)
    end

    #Booking 
    
end
