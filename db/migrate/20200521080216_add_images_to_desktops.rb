class AddImagesToDesktops < ActiveRecord::Migration[5.2]
  def change
    add_column :desktops, :images, :string, array: true, default: []
  end
end
