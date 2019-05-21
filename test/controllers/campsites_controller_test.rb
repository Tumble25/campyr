require 'test_helper'

class CampsitesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get campsites_new_url
    assert_response :success
  end

  test "should get create" do
    get campsites_create_url
    assert_response :success
  end

end
