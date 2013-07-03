class CreatePedals < ActiveRecord::Migration
  def change
    create_table :pedals do |t|
      t.string :title
      t.float :rating
      t.float :price

      t.timestamps
    end
  end
end
