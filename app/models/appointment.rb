class Appointment < ApplicationRecord
  belongs_to :car

  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
