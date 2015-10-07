require 'test_helper'

class DefinitionsControllerTest < ActionController::TestCase
  setup do
    @definition = definitions(:one)
  end

  test "should get index" do
    # skip
    get :index

    assert_response :success
    assert_not_nil assigns(:definitions)
  end

  test "should get new" do
    skip
    get :new

    assert_response :success
  end

  test "should create definition" do
    skip
    assert_difference('Definition.count') do
      post :create, definition: { word: "Webrick", meaning: "Barely a good framework" }
    end

    assert_redirected_to definition_path(assigns(:definition))
  end

  test "should show definition" do
    skip
    get :show, id: @definition
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @definition
    assert_response :success
  end

  test "should update definition" do
    skip
    patch :update, id: @definition, definition: { meaning: @definition.meaning, word: @definition.word }

    assert_redirected_to definition_path(assigns(:definition))
  end

  test "should destroy definition" do
    skip
    assert_difference('Definition.count', -1) do
      delete :destroy, id: @definition
    end

    assert_redirected_to definitions_path
  end

  test "should get search" do
    # skip
    get :search

    assert_response :success

    assert_not_nil assigns(:definitions)
  end

  test "should find word via word" do
    # skip
    get :search, q: 'Rails'

    # The definitions we expect to match are an array containing just the first one (since it has Rails in the word)
    expected_definitions = [definitions(:one)]

    # Expect the assgins (instance vars from controller) to be equal to the expected_definitions
    assert_equal expected_definitions, assigns(:definitions)
  end

  test "should find word via meaning" do
    # skip
    get :search, q: 'second'
    expected_meaning = [definitions(:two)]

    assert_equal expected_meaning, assigns(:definitions)
  end

end
