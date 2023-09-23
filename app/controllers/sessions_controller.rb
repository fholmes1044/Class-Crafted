class SessionsController < ApplicationController

    def home
    end

    def new
    end

    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to :user
        else
            redirect_to "/login"
        end 
    end
end
