class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :skills
  validates :name, presence: true
  validates :description, presence: true
  validates :region, presence: true
  validates :email, presence: true, uniqueness: true
end
