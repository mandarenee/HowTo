require 'test_helper'

class HowToTopicsControllerTest < ActionController::TestCase
  setup do
    @how_to_topic = how_to_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how_to_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how_to_topic" do
    assert_difference('HowToTopic.count') do
      post :create, how_to_topic: { description: @how_to_topic.description, title: @how_to_topic.title }
    end

    assert_redirected_to how_to_topic_path(assigns(:how_to_topic))
  end

  test "should show how_to_topic" do
    get :show, id: @how_to_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how_to_topic
    assert_response :success
  end

  test "should update how_to_topic" do
    patch :update, id: @how_to_topic, how_to_topic: { description: @how_to_topic.description, title: @how_to_topic.title }
    assert_redirected_to how_to_topic_path(assigns(:how_to_topic))
  end

  test "should destroy how_to_topic" do
    assert_difference('HowToTopic.count', -1) do
      delete :destroy, id: @how_to_topic
    end

    assert_redirected_to how_to_topics_path
  end
end
