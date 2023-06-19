class Desk < ApplicationRecord
  belongs_to :room
  has_many :reservations
end
