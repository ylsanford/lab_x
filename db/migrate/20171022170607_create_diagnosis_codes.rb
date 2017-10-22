class CreateDiagnosisCodes < ActiveRecord::Migration
  def change
    create_table :diagnosis_codes do |t|

      t.timestamps
    end
  end
end
