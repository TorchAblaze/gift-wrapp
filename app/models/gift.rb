class Gift < ApplicationRecord
  belongs_to :giftee

  validates :name, presence: true
  validates :giftee, presence: true

  def formatted_price
    rounded_price = price.to_d.round(2).to_f
    dollars, cents = rounded_price.to_s.split(".")

    "$#{dollars}.#{cents.ljust(2, "0")}"
  end
end
