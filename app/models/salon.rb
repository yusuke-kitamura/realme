class Salon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  attachment :image

  validates :salon_name, presence: true
  validates :person_name, presence: true
  validates :number, presence: true
  validates :price, presence: true
  validates :purpose, presence: true
end
