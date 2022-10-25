class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found


    def index
        users = User.all
        render json: users, status: :ok
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def find_user
        user = User.find_by(id: params[:user_id])
        render json: user, status: :ok
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user, status: :accepted
    end

    def show
        user = User.find_by(id: session[:user_id])
        byebug
        if user
          render json: user, status: :ok
        else
          render json: {error: "Unauthorized"}, status: :unauthorized
        end
    end

    private

     def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
     end

     def render_not_found
        render json: {error: "User not found!"}, status: :not_found
     end


    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:full_name, :phone, :email, :account_type, :type, :password, :password_confirmation, :avatar_url, :location_id)
    end
end
