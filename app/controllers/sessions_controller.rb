class SessionsController < ApplicationController
    
    #create sesssion after auth
    skip_before_action :authorized, only: [:create]
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid username or passsword" }, status: :unauthorized
        end

    end
     
    def destroy
        if session[:user_id]
            session.delete :user_id
            head :no_content
        else
            render json: { errors: ["Invalid username or passsword"] }, status: :unauthorized
        end
    end

end