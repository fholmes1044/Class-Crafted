class Product < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :users_who_reviewed, through: :reviews, source: :user
end
