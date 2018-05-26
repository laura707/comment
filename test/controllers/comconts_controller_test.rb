require 'test_helper'

class ComcontsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comconts_create_url
    assert_response :success
  end

  test "should get delete" do
    get comconts_delete_url
    assert_response :success
  end

end
