class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :campsite
  validates :arrival, presence: true
  validates :departures, presence: true
end
