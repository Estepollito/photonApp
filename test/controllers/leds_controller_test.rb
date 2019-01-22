require 'test_helper'

class LedsControllerTest < ActionDispatch::IntegrationTest
  test "should get encender" do
    get leds_encender_url
    assert_response :success
  end

  test "should get apagar" do
    get leds_apagar_url
    assert_response :success
  end

end
