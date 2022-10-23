class AccountBalancesController < ApplicationController
  before_action :set_account_balance, only: %i[ show update destroy ]

  # GET /account_balances
  def index
    @account_balances = AccountBalance.all

    render json: @account_balances
  end

  # GET /account_balances/1
  def show
    render json: @account_balance
  end

  # POST /account_balances
  def create
    @account_balance = AccountBalance.new(account_balance_params)

    if @account_balance.save
      render json: @account_balance, status: :created, location: @account_balance
    else
      render json: @account_balance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /account_balances/1
  def update
    if @account_balance.update(account_balance_params)
      render json: @account_balance
    else
      render json: @account_balance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /account_balances/1
  def destroy
    @account_balance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_balance
      @account_balance = AccountBalance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_balance_params
      params.require(:account_balance).permit(:balance, :customer_id, :mover_id)
    end
end
