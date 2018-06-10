class Trip < ApplicationRecord
  has_many :resources
  has_many :travelers
end
