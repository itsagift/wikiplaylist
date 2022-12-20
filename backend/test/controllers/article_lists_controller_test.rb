require "test_helper"

class ArticleListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_list = article_lists(:one)
  end

  test "should get index" do
    get article_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_article_list_url
    assert_response :success
  end

  test "should create article_list" do
    assert_difference("ArticleList.count") do
      post article_lists_url, params: { article_list: { title: @article_list.title } }
    end

    assert_redirected_to article_list_url(ArticleList.last)
  end

  test "should show article_list" do
    get article_list_url(@article_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_list_url(@article_list)
    assert_response :success
  end

  test "should update article_list" do
    patch article_list_url(@article_list), params: { article_list: { title: @article_list.title } }
    assert_redirected_to article_list_url(@article_list)
  end

  test "should destroy article_list" do
    assert_difference("ArticleList.count", -1) do
      delete article_list_url(@article_list)
    end

    assert_redirected_to article_lists_url
  end
end
