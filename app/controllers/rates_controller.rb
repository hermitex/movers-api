class RatesController < ApplicationController
  before_action :set_rate, only: %i[ show update destroy ]
  # before_action :confirm_user_is_mover_or_admin, only: [:create, :destroy, :update, :patch, :put]
  # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  # GET /rates
  def index
    @rates = Rate.all

    render json: @rates
  end

  # GET /rates/1
  def show
    render json: @rate
  end

  # POST /rates
  def create
    @rate = Rate.new(rate_params)
    # byebug
    if @rate.save
      render json: @rate, status: :created, location: @rate
    else
      render json: @rate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rates/1
  def update
    if @rate.update(rate_params)
      render json: @rate
    else
      render json: @rate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rates/1
  def destroy
    @rate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate
      @rate = Rate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rate_params
      params.permit(:item, :distance, :start, :end, :flat_price, :price_per_unit, :dicount, :user_id)
    end

    # Only a Mover and Admin can manage rates
    def confirm_user_is_mover_or_admin
      logger.debug("session #{session.inspect}")
      byebug
      if !session[:user_id] && User.find(session[:account_type])&.account_type  != "customer" || User.find(session[:account_type])&.account_type != "admin"
        render json: {error: "Not authorized. You must be Admin or Mover to edit rates!"}, status: :unauthorized
      end
    end

    def render_not_found
      render json: {error: "Record not found"}
    end
end
