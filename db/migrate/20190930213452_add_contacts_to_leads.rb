class AddContactsToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :first_name, :string
    add_column :leads, :last_name, :string
    add_column :leads, :phone, :string
    add_column :leads, :email, :string
  end
end
