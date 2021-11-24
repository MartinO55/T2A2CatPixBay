class Transaction < ApplicationRecord
  belongs_to :seller, class_name: 'Profile'
  belongs_to :buyer, class_name: 'Profile'
  belongs_to :picture
end
