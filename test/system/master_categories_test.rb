require "application_system_test_case"

class MasterCategoriesTest < ApplicationSystemTestCase
  setup do
    @master_category = master_categories(:one)
  end

  test "visiting the index" do
    visit master_categories_url
    assert_selector "h1", text: "Master Categories"
  end

  test "creating a Master category" do
    visit master_categories_url
    click_on "New Master Category"

    click_on "Create Master category"

    assert_text "Master category was successfully created"
    click_on "Back"
  end

  test "updating a Master category" do
    visit master_categories_url
    click_on "Edit", match: :first

    click_on "Update Master category"

    assert_text "Master category was successfully updated"
    click_on "Back"
  end

  test "destroying a Master category" do
    visit master_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Master category was successfully destroyed"
  end
end
