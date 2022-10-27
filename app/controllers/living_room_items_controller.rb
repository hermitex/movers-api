class LivingRoomItemsController < ApplicationController
  before_action :set_living_room_item, only: %i[ show update destroy ]

  # GET /living_room_items
  def index
    @living_room_items = LivingRoomItem.all

    render json: @living_room_items
  end

  # GET /living_room_items/1
  def show
    render json: @living_room_item
  end

  # POST /living_room_items
  def create
    @living_room_item = LivingRoomItem.new(living_room_item_params)

    if @living_room_item.save
      render json: @living_room_item, status: :created, location: @living_room_item
    else
      render json: @living_room_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /living_room_items/1
  def update
    if @living_room_item.update(living_room_item_params)
      render json: @living_room_item
    else
      render json: @living_room_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /living_room_items/1
  def destroy
    @living_room_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_living_room_item
      @living_room_item = LivingRoomItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def living_room_item_params
      params.permit(:number_of_sofas, :number_of_cabinets, :number_of_tables, :item_id)
    end
end
