class UsersController < ApplicationController

    def new
        @user = User.new 
    end

    def create
        @user = User.new(user_params)
        @user.password = params[:password]
        if @user.save!
            flash[:notice] = "Thank you for registering"
            flash[:color]= "valid"
        else
            flash[:notice] = "Username or password is invalid"
            flash[:color]= "invalid"
        end
        render "index"
    end

    private
    def user_params
        params.require(:user).permit(:fname, :lname, :email, :password)
    end
end
  

  
