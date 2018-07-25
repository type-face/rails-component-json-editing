class Lottery < ApplicationRecord
  has_many :contests
  accepts_nested_attributes_for :contests
end
