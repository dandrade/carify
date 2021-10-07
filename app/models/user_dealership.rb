class UserDealership < ApplicationRecord
  belongs_to :user
  belongs_to :dealership
end
