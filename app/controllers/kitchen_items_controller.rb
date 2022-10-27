class KitchenItemsController < ApplicationController
  before_action :set_kitchen_item, only: %i[ show update destroy ]

  # GET /kitchen_items
  def index
    @kitchen_items = KitchenItem.all

    render json: @kitchen_items
  end

  # GET /kitchen_items/1
  def show
    render json: @kitchen_item
  end

  # POST /kitchen_items
  def create
    @kitchen_item = KitchenItem.new(kitchen_item_params)

    if @kitchen_item.save
      render json: @kitchen_item, status: :created, location: @kitchen_item
    else
      render json: @kitchen_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kitchen_items/1
  def update
    if @kitchen_item.update(kitchen_item_params)
      render json: @kitchen_item
    else
      render json: @kitchen_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kitchen_items/1
  def destroy
    @kitchen_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchen_item
      @kitchen_item = KitchenItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kitchen_item_params
      params.permit(:number_of_fridges, :number_of_cookers, :number_of_microwaves, :number_of_washing_machines, :item_id)
    end
end
