class MoversController < ApplicationController
  before_action :set_mover, only: %i[ show update destroy ]

  # GET /movers
  def index
    @movers = Mover.all

    render json: @movers
  end

  # GET /movers/1
  def show
    render json: @mover
  end

  # POST /movers
  def create
    @mover = Mover.new(mover_params)

    if @mover.save
      render json: @mover, status: :created, location: @mover
    else
      render json: @mover.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movers/1
  def update
    byebug
    if @mover.update(mover_params)
      render json: @mover
    else
      render json: @mover.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movers/1
  def destroy
    @mover.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mover
      @mover = Mover.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mover_params
      params.fetch(:mover, {})
    end
end
