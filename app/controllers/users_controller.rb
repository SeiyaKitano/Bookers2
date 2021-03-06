class UsersController < ApplicationController
  def new
  end


  def create
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books

  end

  def destroy
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
     redirect_to user_path(current_user), notice: 'You have updated user successfully.'
    else
     render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :body, :profile_image)

  end


end
