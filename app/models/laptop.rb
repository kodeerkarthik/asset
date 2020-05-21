class Laptop < ApplicationRecord
    validates :emp_id, :asset_num, :name, :MAC_address, :charger_num, presence: true
    mount_uploaders :images, LaptopUploader
end
