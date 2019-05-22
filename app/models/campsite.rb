class Campsite < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
end
