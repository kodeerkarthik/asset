class AddImagesToLaptops < ActiveRecord::Migration[5.2]
  def change
    add_column :laptops, :images, :string, array: true, default: []
  end
end
