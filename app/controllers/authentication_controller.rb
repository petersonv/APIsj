class AuthenticationController < ApplicationController
    #find the user, if not a user, send an error
    def login
        user = User.find_by(email: params[:email])
        if !user
            render status: :unauthorized
        else
            if user.authenticate(params[:password])
                app_secret = Rails.application.secrets.secret_key_base [0]
                token = JWT.encode({email: user.email}, app_secret)

                render json: {token: token}
            else
                render status: :unauthorized
            end
        end
        
        #built in authenticate when used with has_secure_password
        #if user.authenticate(params[:password])
        #    render json: {message: "authenticated"}
        #else
        #    render json: {error: "not a valid password"}
        #end
    end
end
