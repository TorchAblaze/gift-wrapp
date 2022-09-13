require "application_system_test_case"

class GifteesTest < ApplicationSystemTestCase
  setup do
    @giftee = giftees(:one)
  end

  test "visiting the index" do
    visit giftees_url
    assert_selector "h1", text: "Giftees"
  end

  test "should create giftee" do
    visit giftees_url
    click_on "New giftee"

    click_on "Create Giftee"

    assert_text "Giftee was successfully created"
    click_on "Back"
  end

  test "should update Giftee" do
    visit giftee_url(@giftee)
    click_on "Edit this giftee", match: :first

    click_on "Update Giftee"

    assert_text "Giftee was successfully updated"
    click_on "Back"
  end

  test "should destroy Giftee" do
    visit giftee_url(@giftee)
    click_on "Destroy this giftee", match: :first

    assert_text "Giftee was successfully destroyed"
  end
end
