class MoversController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def index
      movers = Mover.all
      render json: movers, status: :ok
  end

  def show
      mover = Mover.find_by(id: params[:user_id])
      render json: mover, status: :ok
  end

  private
   def user_params
      params.permit(:rates, :speciality)
   end

   def render_unprocessable_entity(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
   end

   def render_not_found
      render json: {error: "User not found!"}, status: :not_found
   end


end


