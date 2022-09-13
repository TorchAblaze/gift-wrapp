class Giftee < ApplicationRecord
  has_many :gifts

  validates :name, presence: true

end
