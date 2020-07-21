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

  # いいねされているか判定するメソッド
  def favorited_by?(current_user)
    favorites.where(user_id: current_user.id).exists?
  end
end
