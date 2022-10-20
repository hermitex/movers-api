class UserController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
   
    def create
        user = User.create!(user_params)
        if user.valid?
            session[:user_id]= user.id
            render json: user, status: :created
        else
            render json: {errors: user.error.full_messages}, status: :unprocessable_entity
        end
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


end
