class User < ApplicationRecord
  has_many :favorite_items
  has_many :movies, through: :favorite_items
  has_many :favorites
  has_many :series, through: :favorites

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
