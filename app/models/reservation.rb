class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :campsite
  belongs_to :user
  validates :arrival, presence: true
  validates :departures, presence: true
end
