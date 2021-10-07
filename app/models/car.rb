class Car < ApplicationRecord
  enum kind: [:new, :used], _prefix: :kind
  belongs_to :car_brand
  has_many :car_dealerships, dependent: :destroy
  has_many :dealerships, through: :car_dealerships
  accepts_nested_attributes_for :dealerships

  def dealerships_attributes=(dealership_attributes)
    dealership_attributes.values.each do |dealership_attribute|
      dealership = Dealership.find_or_create_by(dealership_attribute)
      self.dealerships << dealership
    end
  end
end
