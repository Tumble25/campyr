class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
end
