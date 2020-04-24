require "application_system_test_case"

class PostReviewsTest < ApplicationSystemTestCase
  setup do
    @post_review = post_reviews(:one)
  end

  test "visiting the index" do
    visit post_reviews_url
    assert_selector "h1", text: "Post Reviews"
  end

  test "creating a Post review" do
    visit post_reviews_url
    click_on "New Post Review"

    click_on "Create Post review"

    assert_text "Post review was successfully created"
    click_on "Back"
  end

  test "updating a Post review" do
    visit post_reviews_url
    click_on "Edit", match: :first

    click_on "Update Post review"

    assert_text "Post review was successfully updated"
    click_on "Back"
  end

  test "destroying a Post review" do
    visit post_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post review was successfully destroyed"
  end
end
