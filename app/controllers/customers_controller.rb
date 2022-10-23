class CustomersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        customers = Customer.all
        render json: customers, status: :ok
    end

    def show
        customer = Customer.find_by(id: params[:user_id])
        render json: customer, status: :ok
    end

    private
     def user_params
        params.permit(:rates, :speciality)
     end

     def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
     end

     def render_not_found
        render json: {error: "User not found!"}, status: :not_found
     end


  end


