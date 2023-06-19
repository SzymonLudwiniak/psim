class Desk < ApplicationRecord
  belongs_to :room
  has_many :reservations

  def number_with_status
    "#{number} (#{status})"
  end
end
