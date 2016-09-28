class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  validates_presence_of :address
  validates_presence_of :name
end
