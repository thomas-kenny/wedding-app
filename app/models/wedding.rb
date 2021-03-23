class Wedding < ApplicationRecord
  has_many :rsvps
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

def address
  [street, town, city, postcode].compact.join(', ')
end
