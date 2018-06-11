class Trip < ApplicationRecord
  has_many :resources
  has_many :trip_travelers
  has_many :travelers, through: :trip_travelers

  accepts_nested_attributes_for :resources
end
