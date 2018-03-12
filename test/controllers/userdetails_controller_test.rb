require 'test_helper'

class UserdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userdetail = userdetails(:one)
  end

  test "should get index" do
    get userdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_userdetail_url
    assert_response :success
  end

  test "should create userdetail" do
    assert_difference('Userdetail.count') do
      post userdetails_url, params: { userdetail: { location: @userdetail.location, moderator_name: @userdetail.moderator_name, society_name: @userdetail.society_name } }
    end

    assert_redirected_to userdetail_url(Userdetail.last)
  end

  test "should show userdetail" do
    get userdetail_url(@userdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_userdetail_url(@userdetail)
    assert_response :success
  end

  test "should update userdetail" do
    patch userdetail_url(@userdetail), params: { userdetail: { location: @userdetail.location, moderator_name: @userdetail.moderator_name, society_name: @userdetail.society_name } }
    assert_redirected_to userdetail_url(@userdetail)
  end

  test "should destroy userdetail" do
    assert_difference('Userdetail.count', -1) do
      delete userdetail_url(@userdetail)
    end

    assert_redirected_to userdetails_url
  end
end
