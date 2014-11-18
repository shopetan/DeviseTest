require 'test_helper'

class QTextsControllerTest < ActionController::TestCase
  setup do
    @q_text = q_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:q_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create q_text" do
    assert_difference('QText.count') do
      post :create, q_text: { check: @q_text.check, content: @q_text.content, number: @q_text.number }
    end

    assert_redirected_to q_text_path(assigns(:q_text))
  end

  test "should show q_text" do
    get :show, id: @q_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @q_text
    assert_response :success
  end

  test "should update q_text" do
    patch :update, id: @q_text, q_text: { check: @q_text.check, content: @q_text.content, number: @q_text.number }
    assert_redirected_to q_text_path(assigns(:q_text))
  end

  test "should destroy q_text" do
    assert_difference('QText.count', -1) do
      delete :destroy, id: @q_text
    end

    assert_redirected_to q_texts_path
  end
end
