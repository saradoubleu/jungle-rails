class SessionsController < ApplicationController

  user = User.find_by(email: params[:session][:email].downcase)
    if email && email.authenticate(params[:session][:password])
    else
      flash[:danger] = 'Email or Password is invalid'
      render 'new'
    end
  end

  def destroy
  end
end

  def new
    render 'new'
  end

end

