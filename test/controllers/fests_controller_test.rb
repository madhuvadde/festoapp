require 'test_helper'

class FestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fest = fests(:one)
  end

  test "should get index" do
    get fests_url
    assert_response :success
  end

  test "should get new" do
    get new_fest_url
    assert_response :success
  end

  test "should create fest" do
    assert_difference('Fest.count') do
      post fests_url, params: { fest: { description: @fest.description, end_date: @fest.end_date, name: @fest.name, start_date: @fest.start_date } }
    end

    assert_redirected_to fest_url(Fest.last)
  end

  test "should show fest" do
    get fest_url(@fest)
    assert_response :success
  end

  test "should get edit" do
    get edit_fest_url(@fest)
    assert_response :success
  end

  test "should update fest" do
    patch fest_url(@fest), params: { fest: { description: @fest.description, end_date: @fest.end_date, name: @fest.name, start_date: @fest.start_date } }
    assert_redirected_to fest_url(@fest)
  end

  test "should destroy fest" do
    assert_difference('Fest.count', -1) do
      delete fest_url(@fest)
    end

    assert_redirected_to fests_url
  end
end
