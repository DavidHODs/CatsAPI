require "test_helper"

class CatPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_post = cat_posts(:one)
  end

  test "should get index" do
    get cat_posts_url, as: :json
    assert_response :success
  end

  test "should create cat_post" do
    assert_difference("CatPost.count") do
      post cat_posts_url, params: { cat_post: { age: @cat_post.age, color: @cat_post.color, name: @cat_post.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cat_post" do
    get cat_post_url(@cat_post), as: :json
    assert_response :success
  end

  test "should update cat_post" do
    patch cat_post_url(@cat_post), params: { cat_post: { age: @cat_post.age, color: @cat_post.color, name: @cat_post.name } }, as: :json
    assert_response :success
  end

  test "should destroy cat_post" do
    assert_difference("CatPost.count", -1) do
      delete cat_post_url(@cat_post), as: :json
    end

    assert_response :no_content
  end
end
