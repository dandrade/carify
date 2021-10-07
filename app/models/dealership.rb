class Dealership < ApplicationRecord
  has_many :user_dealerships
  has_many :users, through: :user_dealerships

  has_many :car_dealerships, dependent: :destroy
  has_many :cars, through: :car_dealerships
end
