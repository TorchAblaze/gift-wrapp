require "test_helper"

class GifteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @giftee = giftees(:one)
  end

  test "should get index" do
    get giftees_url
    assert_response :success
  end

  test "should get new" do
    get new_giftee_url
    assert_response :success
  end

  test "should create giftee" do
    assert_difference("Giftee.count") do
      post giftees_url, params: { giftee: {  } }
    end

    assert_redirected_to giftee_url(Giftee.last)
  end

  test "should show giftee" do
    get giftee_url(@giftee)
    assert_response :success
  end

  test "should get edit" do
    get edit_giftee_url(@giftee)
    assert_response :success
  end

  test "should update giftee" do
    patch giftee_url(@giftee), params: { giftee: {  } }
    assert_redirected_to giftee_url(@giftee)
  end

  test "should destroy giftee" do
    assert_difference("Giftee.count", -1) do
      delete giftee_url(@giftee)
    end

    assert_redirected_to giftees_url
  end
end
