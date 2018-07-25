class Contest < ApplicationRecord
  belongs_to :lottery
  has_many :prizes
  accepts_nested_attributes_for :prizes

  enum type: { single: 0, combo: 1, choice: 2 }
  enum category: { grand_prize: 0, early_bird: 1, cash_calendar: 2, fifty_fifty: 3 }
end
