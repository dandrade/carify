class CarDealership < ApplicationRecord
  belongs_to :car
  belongs_to :dealership
end
