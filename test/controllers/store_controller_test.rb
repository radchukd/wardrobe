require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index_" do
    get store_index__url
    assert_response :success
  end

end
