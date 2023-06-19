class User < ApplicationRecord
    has_many :reservations
    has_many :desks, through: :reservations
end
