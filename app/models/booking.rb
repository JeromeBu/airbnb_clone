class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_many :reviews

  validates :nb_guests, presence: true, numericality: { only_integer: true }
  validates :arrival_date, presence: true
  validates :duration, presence: true
end
