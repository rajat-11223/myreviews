require 'test_helper'

class MasterCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_category = master_categories(:one)
  end

  test "should get index" do
    get master_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_master_category_url
    assert_response :success
  end

  test "should create master_category" do
    assert_difference('MasterCategory.count') do
      post master_categories_url, params: { master_category: {  } }
    end

    assert_redirected_to master_category_url(MasterCategory.last)
  end

  test "should show master_category" do
    get master_category_url(@master_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_category_url(@master_category)
    assert_response :success
  end

  test "should update master_category" do
    patch master_category_url(@master_category), params: { master_category: {  } }
    assert_redirected_to master_category_url(@master_category)
  end

  test "should destroy master_category" do
    assert_difference('MasterCategory.count', -1) do
      delete master_category_url(@master_category)
    end

    assert_redirected_to master_categories_url
  end
end
