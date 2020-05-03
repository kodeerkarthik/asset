require 'test_helper'

class LaptopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laptop_index_url
    assert_response :success
  end

end
