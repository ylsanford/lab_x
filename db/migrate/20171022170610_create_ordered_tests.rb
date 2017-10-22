class CreateOrderedTests < ActiveRecord::Migration
  def change
    create_table :ordered_tests do |t|
      t.references :patient, index: true

      t.timestamps
    end
  end
end
