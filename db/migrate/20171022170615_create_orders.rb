class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :collection_date_time
      t.string :test_type
      t.references :user, index: true
      t.references :patient, index: true
      t.references :practice, index: true

      t.timestamps
    end
  end
end
