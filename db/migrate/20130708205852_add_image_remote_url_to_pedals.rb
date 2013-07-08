class AddImageRemoteUrlToPedals < ActiveRecord::Migration
  def change
    add_column :pedals, :image_remote_url, :string
  end
end
