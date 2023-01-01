class Giftee < ApplicationRecord
  has_many :gifts, dependent: :destroy

  validates :name, presence: true

end
