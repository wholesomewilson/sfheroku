class SaccountsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  def show

  end

  def create
    @saccount = Saccount.new(saccount_params)
    respond_to do |format|
      if @saccount.save
        format.html { redirect_to @saccount }
        flash[:notice] = "<strong>Success! New Lead Created!</strong>"
        format.json { render :show, status: :created, location: @saccount }
      else
        puts @saccount.errors.messages
        format.html { render :new }
        format.json { render json: @saccount.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @saccount = Saccount.new
  end

  def edit

  end

  def update
    @saccount.update(saccount_params)
    respond_to do |format|
      if @saccount.save
        format.html { redirect_to @saccount }
        flash[:notice] = "<strong>Success! Lead Updated!</strong>"
        format.json { render :show, status: :created, location: @saccount }
      else
        puts @saccount.errors.messages
        format.html { render :new }
        format.json { render json: @saccount.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

  private
  def set_lead
    @saccount = Saccount.find(params[:id])
  end

  def saccount_params
    params.require(:saccount).permit(:name, :phone)
  end
end
