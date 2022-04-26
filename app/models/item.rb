class Item < ApplicationRecord
  belongs_to :reservations
  has_many :users
end
