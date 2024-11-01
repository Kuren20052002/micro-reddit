class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
