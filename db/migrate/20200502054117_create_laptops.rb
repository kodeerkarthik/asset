class CreateLaptops < ActiveRecord::Migration[5.2]
  def change
    create_table :laptops do |t|
      t.string :emp_id
      t.string :asset_num
      t.string :name
      t.string :MAC_address
      t.string :charger_num
      t.string :comment

      t.timestamps
    end
  end
end
