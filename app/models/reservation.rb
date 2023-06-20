class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :desk

  validates :reservationDate, presence: true
  validates :useDate, presence: true
  validate :unique_reservation_per_desk_and_date

  private

  def unique_reservation_per_desk_and_date
    if Reservation.exists?(desk_id: desk_id, reservationDate: reservationDate)
      errors.add(:base, "There is already a reservation for this desk on the selected date")
    end
  end
end
