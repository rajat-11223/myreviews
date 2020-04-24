require 'test_helper'

class PostReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_review = post_reviews(:one)
  end

  test "should get index" do
    get post_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_post_review_url
    assert_response :success
  end

  test "should create post_review" do
    assert_difference('PostReview.count') do
      post post_reviews_url, params: { post_review: {  } }
    end

    assert_redirected_to post_review_url(PostReview.last)
  end

  test "should show post_review" do
    get post_review_url(@post_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_review_url(@post_review)
    assert_response :success
  end

  test "should update post_review" do
    patch post_review_url(@post_review), params: { post_review: {  } }
    assert_redirected_to post_review_url(@post_review)
  end

  test "should destroy post_review" do
    assert_difference('PostReview.count', -1) do
      delete post_review_url(@post_review)
    end

    assert_redirected_to post_reviews_url
  end
end
