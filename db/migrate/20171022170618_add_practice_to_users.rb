class AddPracticeToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :practice, index: true
  end
end
