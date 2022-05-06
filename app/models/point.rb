class Point < ApplicationRecord
  belongs_to :place
  has_many :photos, as: :imageable
end
