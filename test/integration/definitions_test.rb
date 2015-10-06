require 'test_helper'

class DefinitionsTest < ActionDispatch::IntegrationTest
  test "validates correct word returned from search" do
    word1 = Definition.create(word: "dog", meaning: "man's best friend")
    word2 = Definition.create(word: "cat", meaning: "evil incarnate")
    word3 = Definition.create(word: "fish", meaning: "sea dweller")
    get search_path, q: 'cat'

    expected_return = [word2]

    assert_equal expected_return, assigns(:definitions)
  end
end
