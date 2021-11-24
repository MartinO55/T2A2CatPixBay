class Profile < ApplicationRecord
    belongs_to :user
    has_many :picture

    has_many :purchases, class_name: 'Transaction', foreign_key: 'buyer_id'
    has_many :sales, class_name: 'Transaction', foreign_key: 'seller_id'

    has_many :purchased_pictures, through: :purchases, source: :picture
    has_many :sold_recipes, through: :sales, source: :picture

    scope :sellers, ->{distinct.joins(:sales)}
    scope :buyers, ->{distinct.joins(:purchases)}
end
