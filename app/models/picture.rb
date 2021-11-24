class Picture < ApplicationRecord
    belongs_to :profile
    has_one_attached :image
    has_many :transactions

    scope :sold, -> { joins(:transactions)}
end
