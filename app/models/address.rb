class Address < ApplicationRecord
  has_one :shop
  def faddress
    "#{city} #{post_code} #{streat} #{home_number}"
  end
end
