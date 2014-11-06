class PollsController < ApplicationController
  before_action :set_poll, only: [:show, :edit, :update, :destroy]

  def index
    @polls = Poll.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll }
    end
  end

  def show
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll }
    end
  end

  def new
    @poll = Poll.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll }
    end
  end

  def edit
  end

  def create
    @poll = Poll.new(poll_params)
    @poll.user_id = current_user.user_id
    if @poll.save
      redirect_to "dashboard#index"
    else 
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @poll }
      end
    end
  end

  def update
    @poll.update(poll_params)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll }
    end
  end

  def destroy
    @poll.destroy
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll }
    end
  end

  private
    def set_poll
      @poll = Poll.find(params[:id])
    end

    def poll_params
      params.require(:poll).permit(:title, :user_id)
    end
end
