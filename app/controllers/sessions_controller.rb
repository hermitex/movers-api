class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:create, :destroy]

  # Logging-in
    def create
      user = User.find_by(email: params[:email])
      if params[:password]       
        #  session[:user_id] = user.id
        # # byebug
        # render json: user, status: :created

        # USING JWT
        token = encode_token({ user_id: user.id })
        render json: { user: UserSerializer.new(user), jwt: token }, status: :created
      else
        render json: { error: "Invalid email or password" }, status: :unauthorized
      end
    end

    # Log-Out
    def destroy
        session.destroy
        head :no_content
    end
end

