require 'test_helper'

class ApparelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apparel = apparels(:one)
  end

  test "should get index" do
    get apparels_url
    assert_response :success
  end

  test "should get new" do
    get new_apparel_url
    assert_response :success
  end

  test "should create apparel" do
    assert_difference('Apparel.count') do
      post apparels_url, params: { apparel: { description: @apparel.description, gender: @apparel.gender, price: @apparel.price, style: @apparel.style, title: @apparel.title } }
    end

    assert_redirected_to apparel_url(Apparel.last)
  end

  test "should show apparel" do
    get apparel_url(@apparel)
    assert_response :success
  end

  test "should get edit" do
    get edit_apparel_url(@apparel)
    assert_response :success
  end

  test "should update apparel" do
    patch apparel_url(@apparel), params: { apparel: { description: @apparel.description, gender: @apparel.gender, price: @apparel.price, style: @apparel.style, title: @apparel.title } }
    assert_redirected_to apparel_url(@apparel)
  end

  test "should destroy apparel" do
    assert_difference('Apparel.count', -1) do
      delete apparel_url(@apparel)
    end

    assert_redirected_to apparels_url
  end
end
