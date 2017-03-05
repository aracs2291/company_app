class Address < ApplicationRecord

  geocoded_by :street_address
  after_validation :geocode

  validates_presence_of :address_line, :city, :zip_code, :country, :state

  def street_address
    [country, state, address_line, city].compact.join(', ')
  end
end
