class Owner < ApplicationRecord
  has_many :shops
  def fname
    "#{name} #{sname}"
  end
end
