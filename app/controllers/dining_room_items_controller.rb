class DiningRoomItemsController < ApplicationController
  before_action :set_dining_room_item, only: %i[ show update destroy ]

  # GET /dining_room_items
  def index
    @dining_room_items = DiningRoomItem.all

    render json: @dining_room_items
  end

  # GET /dining_room_items/1
  def show
    render json: @dining_room_item
  end

  # POST /dining_room_items
  def create
    @dining_room_item = DiningRoomItem.new(dining_room_item_params)

    if @dining_room_item.save
      render json: @dining_room_item, status: :created, location: @dining_room_item
    else
      render json: @dining_room_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dining_room_items/1
  def update
    if @dining_room_item.update(dining_room_item_params)
      render json: @dining_room_item
    else
      render json: @dining_room_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dining_room_items/1
  def destroy
    @dining_room_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining_room_item
      @dining_room_item = DiningRoomItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dining_room_item_params
      params.require(:dining_room_item).permit(:number_of_dining_chairs, :number_of_dining_tables)
    end
end
