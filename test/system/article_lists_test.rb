require "application_system_test_case"

class ArticleListsTest < ApplicationSystemTestCase
  setup do
    @article_list = article_lists(:one)
  end

  test "visiting the index" do
    visit article_lists_url
    assert_selector "h1", text: "Article lists"
  end

  test "should create article list" do
    visit article_lists_url
    click_on "New article list"

    fill_in "Title", with: @article_list.title
    click_on "Create Article list"

    assert_text "Article list was successfully created"
    click_on "Back"
  end

  test "should update Article list" do
    visit article_list_url(@article_list)
    click_on "Edit this article list", match: :first

    fill_in "Title", with: @article_list.title
    click_on "Update Article list"

    assert_text "Article list was successfully updated"
    click_on "Back"
  end

  test "should destroy Article list" do
    visit article_list_url(@article_list)
    click_on "Destroy this article list", match: :first

    assert_text "Article list was successfully destroyed"
  end
end
