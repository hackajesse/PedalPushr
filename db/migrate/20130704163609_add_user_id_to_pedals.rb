class AddUserIdToPedals < ActiveRecord::Migration
  def change
    add_column :pedals, :user_id, :integer
    add_index :pedals, :user_id
  end
end
