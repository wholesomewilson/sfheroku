class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]
  def index
    @leads = Lead.all
  end

  def show

  end

  def create
    @lead = Lead.new(lead_params)
    respond_to do |format|
      if @lead.save
        format.html { redirect_to @lead }
        flash[:notice] = "<strong>Success! New Lead Created!</strong>"
        format.json { render :show, status: :created, location: @lead }
      else
        puts @lead.errors.messages
        format.html { render :new }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @lead = Lead.new
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def set_lead
    @lead = Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :phone, :email, :company)
  end
end
