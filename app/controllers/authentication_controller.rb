class AuthenticationController < ApplicationController
    #find the user, if not a user, send an error
    def login
        user = User.find_by(email: params[:email])
        if (!user)
            render json: {error: "not a valid email"}
        end
        
        #built in authenticate when used with has_secure_password
        if user.authenticate(params[:password])
            render json: {message: "authenticated"}
        else
            render json: {error: "not a valid password"}
        end
    end
end
