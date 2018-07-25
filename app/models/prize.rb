class Prize < ApplicationRecord
  belongs_to :contest
  has_one_attached :image

  enum type: { home: 0, car: 1, vacation: 2, cash: 3 }
end
