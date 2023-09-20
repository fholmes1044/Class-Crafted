class User < ApplicationRecord
    has_many :products, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :reviewed_products, through: :reviews, source: :product
end
