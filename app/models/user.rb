class User < ApplicationRecord
  has_many :pictures, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_pictures, through: :favorites, source: :picture
  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
