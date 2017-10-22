class CreateIcdCurrents < ActiveRecord::Migration
  def change
    create_table :icd_currents do |t|

      t.timestamps
    end
  end
end
