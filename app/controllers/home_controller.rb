class HomeController < ApplicationController
  include HomeHelper
  def index
    @sleads = Slead.all
    @saccounts = Saccount.all
    @scontacts = Scontact.all
  end

  def stable
    @records = get_records.sort_by { |x| x.systemmodstamp }.reverse!
    render :layout => false
  end
end
