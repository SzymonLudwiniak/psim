class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations
  has_many :desks, through: :reservations

  validates :name, :lastname, presence: true

  def name_with_lastname
    "#{name} #{lastname}"
  end
end
