class Dealership < ApplicationRecord
  has_many :user_dealerships
  has_many :users, through: :user_dealerships
end
