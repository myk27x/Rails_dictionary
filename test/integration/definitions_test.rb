require 'test_helper'

class DefinitionsTest < ActionDispatch::IntegrationTest
  setup do
    @word1 = Definition.create(word: "dog", meaning: "man's best friend")
    @word2 = Definition.create(word: "cat", meaning: "evil incarnate")
    @word3 = Definition.create(word: "fish", meaning: "sea dweller")
  end

  test "validates correct word returned from search" do
    get search_path, q: 'cat'

    expected_return = [@word2]

    assert_equal expected_return, assigns(:definitions)
  end

  test "link exists on homepage to create new word" do
    get definitions_path

    assert_select 'div#add_word', 1
  end

  test "new word link shows a form" do
    get new_definition_path

    assert_select 
  end

  test "creating a new word adds the word to the database" do

  end

  test "after creating a new word redirects to main page and new word is displayed" do

  end

end
