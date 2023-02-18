require "test_helper"

class AdvertisementsControllerTest < ActionDispatch::IntegrationTest
  test "get root" do
    get root_path
    assert_response :success
    assert_select "h1", text: "Flourish"
  end
end
