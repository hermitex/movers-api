class InventoryChecklistsController < ApplicationController
  before_action :set_inventory_checklist, only: %i[ show update destroy ]

  # GET /inventory_checklists
  def index
    @inventory_checklists = InventoryChecklist.all

    render json: @inventory_checklists
  end

  # GET /inventory_checklists/1
  def show
    render json: @inventory_checklist
  end

  # POST /inventory_checklists
  def create
    @inventory_checklist = InventoryChecklist.new(inventory_checklist_params)

    if @inventory_checklist.save
      render json: @inventory_checklist, status: :created, location: @inventory_checklist
    else
      render json: @inventory_checklist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventory_checklists/1
  def update
    if @inventory_checklist.update(inventory_checklist_params)
      render json: @inventory_checklist
    else
      render json: @inventory_checklist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inventory_checklists/1
  def destroy
    @inventory_checklist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_checklist
      @inventory_checklist = InventoryChecklist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_checklist_params
      params.require(:inventory_checklist).permit(:number_of_beds, :number_of_chairs, :number_of_fridges, :number_of_washing_machines, :number_of_tables, :customer_id)
    end
end
