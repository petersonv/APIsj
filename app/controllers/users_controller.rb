class UsersController < ApplicationController
    def create
        #receive user params, create user, send back json object
        user = User.create(
            email: params[:email],
            password: params[:password]
        )
        render json: user
    end
end