class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_attachments :photos, maximum: 4

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :max_guests, presence: true, numericality: { only_integer: true }
  validates :price_per_night, presence: true
end
