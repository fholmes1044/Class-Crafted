class User < ApplicationRecord
    has_secure_password 
    has_many :orders
    has_many :products, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :reviewed_products, through: :reviews, source: :product

    validates :username, :first_name, :last_name, :age, :email, :password, :password_confirmation, :profile_picture, :user_type, presence: true
    validates :age, numericality: {greater_than_or_equal_to: 18}
    validates :username, length: { minimum: 3, maximum: 50 }
    validates :password_digest, length: { minimum: 12}
    validates :email, uniqueness: { case_sensitive: true }
end
