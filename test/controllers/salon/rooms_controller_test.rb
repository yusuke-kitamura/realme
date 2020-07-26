require 'test_helper'

class Salon::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get salon_rooms_show_url
    assert_response :success
  end

end
