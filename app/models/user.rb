class User < ApplicationRecord
    has_many :reservations
    has_many :desks, through: :reservations

    def name_with_lastname
        "#{name} #{lastname}"
      end
end
