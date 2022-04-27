class Item < ApplicationRecord
  has_many :users
  belongs_to :reservations
end
