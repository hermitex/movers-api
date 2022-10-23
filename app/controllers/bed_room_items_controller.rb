class BedRoomItemsController < ApplicationController
  before_action :set_bed_room_item, only: %i[ show update destroy ]

  # GET /bed_room_items
  def index
    @bed_room_items = BedRoomItem.all

    render json: @bed_room_items
  end

  # GET /bed_room_items/1
  def show
    render json: @bed_room_item
  end

  # POST /bed_room_items
  def create
    @bed_room_item = BedRoomItem.new(bed_room_item_params)

    if @bed_room_item.save
      render json: @bed_room_item, status: :created, location: @bed_room_item
    else
      render json: @bed_room_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bed_room_items/1
  def update
    if @bed_room_item.update(bed_room_item_params)
      render json: @bed_room_item
    else
      render json: @bed_room_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bed_room_items/1
  def destroy
    @bed_room_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed_room_item
      @bed_room_item = BedRoomItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bed_room_item_params
      params.require(:bed_room_item).permit(:number_of_beds, :number_of_side_tables)
    end
end
