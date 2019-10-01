class AddCompanyToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :company, :string
  end
end
