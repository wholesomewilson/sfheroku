class ScontactsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  def show

  end

  def create
    @scontact = Scontact.new(scontact_params)
    respond_to do |format|
      if @scontact.save
        format.html { redirect_to @scontact }
        flash[:notice] = "<strong>Success! New Lead Created!</strong>"
        format.json { render :show, status: :created, location: @scontact }
      else
        puts @scontact.errors.messages
        format.html { render :new }
        format.json { render json: @scontact.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @scontact = Scontact.new
  end

  def edit

  end

  def update
    @scontact.update(scontact_params)
    respond_to do |format|
      if @scontact.save
        format.html { redirect_to @scontact }
        flash[:notice] = "<strong>Success! Lead Updated!</strong>"
        format.json { render :show, status: :created, location: @scontact }
      else
        puts @scontact.errors.messages
        format.html { render :new }
        format.json { render json: @scontact.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

  private
  def set_lead
    @scontact = Scontact.find(params[:id])
  end

  def scontact_params
    params.require(:scontact).permit(:firstname, :lastname, :email, :phone)
  end
end
