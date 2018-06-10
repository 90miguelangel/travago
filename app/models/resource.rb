class Resource < ApplicationRecord
  has_one :resource_type
  belongs_to :trip
end
