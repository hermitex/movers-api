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
        mover = Mover.find_by(id: params[:user_id])
        render json: mover, status: :ok
    end

    def update
        user = User.find_by(id: params[:user_id])
        user.update!(user_params)
        render json: user, status: :accepted
    end

    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, status: :created
        else
            render json: {error: "Not authorized"}, status: :unauthorized
        end
    end

    private
     def user_params
        params.permit(:fullname, :password, :password_confirmation, :email)
     end

     def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
     end

     def render_not_found
        render json: {error: "User not found!"}, status: :not_found
     end

end

