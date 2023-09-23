class Review < ApplicationRecord
    belongs_to :user
    belongs_to :product

    validates :user_id, :product_id, :summary, :rating, :date, presence: true
end
