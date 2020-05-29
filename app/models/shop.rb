class Shop < ApplicationRecord
  belongs_to :owner
  belongs_to :address
  has_and_belongs_to_many :items
end
