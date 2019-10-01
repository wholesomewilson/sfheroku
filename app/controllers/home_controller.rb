class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @sleads = Slead.all
    @saccounts = Saccount.all
    @scontacts = Scontact.all
  end
end
