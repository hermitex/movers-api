class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show update destroy ]

  # GET /quotes
  def index
    @quotes = Quote.all

    render json: @quotes
  end

  # GET /quotes/1
  def show
    render json: @quote
  end

  # POST /quotes
  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      render json: @quote, status: :created, location: @quote
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotes/1
  def update
    if @quote.update(quote_params)
      render json: @quote
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotes/1
  def destroy
    @quote.destroy
  end

#adding item
  def add_quantity
    @quote = Quote.find(params[:id])
    @quote.quantity +=1
    @quote.save
  end
  
#reducing the item

  def reduce_quantity
    @quote = Quote.find(params[:id])
    if quote.quantity > 1
      @quote.quantity -= 1
      @quote.save
      render json: @quote
    else
      destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.require(:quote).permit(:amount, :status, :customer_id, :mover_id)
    end
end
