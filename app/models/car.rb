class Car < ApplicationRecord
  belongs_to :car_brand
  has_many :car_dealerships
  has_many :dealerships, through: :car_dealerships
end
