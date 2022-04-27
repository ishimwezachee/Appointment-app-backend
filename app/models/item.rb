class Item < ApplicationRecord
  has_many :user
  has_many :reservations, dependent: :destroy
end
