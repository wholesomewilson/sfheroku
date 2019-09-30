class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :salesforce_id
      t.integer :status

      t.timestamps
    end
  end
end
