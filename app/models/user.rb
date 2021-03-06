class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :salons, through: :favorites
  has_many :salons, through: :messages

  attachment :image

  validates :name, presence: true
  validates :age, presence: true
end
