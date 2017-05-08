class SessionsController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.authenticate(params[:user][:password])
      #authentication is not working, letting anyone sign in. should only be stephencolbert
      @user.save
      session[:name] = @user.username
      redirect_to sessions_path
    else
      flash[:notice] = "You did not enter the correct username or password. Please try again."
      render :new
    end
  end

  def destroy
    #logout not working
    session.destroy
    redirect_to login_path
  end



private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end
