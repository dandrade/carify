class CarBrand < ApplicationRecord
  has_many :cars, dependent: :destroy
end
