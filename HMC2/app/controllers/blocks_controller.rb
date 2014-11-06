class BlocksController < ApplicationController
  before_action :set_block, only: [:show, :edit, :update, :destroy]

  def index
    @blocks = Block.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block }
    end
  end

  def show
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block }
    end
  end

  def new
    @block = Block.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block }
    end
  end

  def edit
  end

  def create
    @block = Block.new(block_params)
    @block.save
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block }
    end
  end

  def update
    @block.update(block_params)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block }
    end
  end

  def destroy
    @block.destroy
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block }
    end
  end

  private
    def set_block
      @block = Block.find(params[:id])
    end

    def block_params
      params.require(:block).permit(:head, :description, :image, :poll_id)
    end
end
