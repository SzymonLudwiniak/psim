class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :desk

  validates :reservationDate, presence: true
  validates :useDate, presence: true
end
