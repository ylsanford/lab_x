class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.references :practice, index: true

      t.timestamps
    end
  end
end
