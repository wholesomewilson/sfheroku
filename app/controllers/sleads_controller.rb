class SleadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  def show

  end

  def create
    @slead = Slead.new(slead_params)
    respond_to do |format|
      if @slead.save
        format.html { redirect_to @slead }
        flash[:notice] = "<strong>Success! New Lead Created!</strong>"
        format.json { render :show, status: :created, location: @slead }
      else
        puts @slead.errors.messages
        format.html { render :new }
        format.json { render json: @slead.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @slead = Slead.new
  end

  def edit

  end

  def update
    @slead.update(slead_params)
    respond_to do |format|
      if @slead.save
        format.html { redirect_to @slead }
        flash[:notice] = "<strong>Success! Lead Updated!</strong>"
        format.json { render :show, status: :created, location: @slead }
      else
        puts @slead.errors.messages
        format.html { render :new }
        format.json { render json: @slead.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

  private
  def set_lead
    @slead = Slead.find(params[:id])
  end

  def slead_params
    params.require(:slead).permit(:firstname, :lastname, :phone, :company, :email)
  end
end
