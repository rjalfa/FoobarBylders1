class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def show
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def update
    @user.update(user_params)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:user_id, :uname)
    end
end
