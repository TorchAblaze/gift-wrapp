require "test_helper"

class GiftTest < ActiveSupport::TestCase
  test "that price is formatted to two decimal places" do
    assert_equal "$1.50", Gift.find(1).formatted_price
    assert_equal "$1.56",Gift.find(3).formatted_price
  end

  test "that price is formatted to include dollar sign at first" do
    assert Gift.find(1).formatted_price.start_with?("$")
    assert Gift.find(3).formatted_price.start_with?("$")
  end
end
