class Desktop < ApplicationRecord
    validates :emp_id, :asset_num, :name, :MAC_address, presence: true
end
