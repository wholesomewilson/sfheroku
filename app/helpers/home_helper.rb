module HomeHelper
  def get_records
    @records = []
    @records += Slead.all.order(systemmodstamp: :desc).first(3)
    @records += Scontact.all.order(systemmodstamp: :desc).first(3)
    @records += Saccount.all.order(systemmodstamp: :desc).first(3)
  end
end
