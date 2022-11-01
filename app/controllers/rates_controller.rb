class RatesController < ApplicationController
  before_action :set_rate, only: %i[ show update destroy ]
  before_action :confirm_user_is_mover_or_admin, only: [:create, :destroy, :update, :patch, :put]
  # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  # GET /rates
  def index
    @rates = Rate.group(:id, :category)

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

  #adding price logic per item on the user
  # def rates
  # item.price_per_unit * count
  # #   @total_price || = inventory_checklists.includes(:item).reduce(0) do |sum, i_check|
  # #     sum + (i_check.count * i_check.item.price)
  #   # end
  # end
  def rates
    total_price = 0
    item.each do |basket_item|
      total_price += basket_item.total_price
    end
    total_price
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate
      @rate = Rate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rate_params
      params.permit(:item_name, :category, :count, :distance, :start, :end, :flat_price, :price_per_unit, :discount, :user_id)
    end

    # Only a Mover and Admin can manage rates
    def confirm_user_is_mover_or_admin
      user = UserSerializer.new(current_user).to_hash
      byebug
      if !user[:account_type] === "mover" || !user[:account_type] === "admin" then
        render json: {error: "Not authorized. You must be Admin or Mover to edit rates!"}, status: :unauthorized
      end
    end

    def render_not_found
      render json: {error: "Record not found"}
    end
end
