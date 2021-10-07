class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :user_dealerships
  has_many :dealerships, through: :user_dealerships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_default_role
    self.role ||= :user
  end
end
