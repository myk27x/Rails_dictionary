require 'test_helper'

class DefinitionsTest < ActionDispatch::IntegrationTest
  setup do
    @word1 = Definition.create(word: "dog", meaning: "man's best friend")
    @word2 = Definition.create(word: "cat", meaning: "evil incarnate")
    @word3 = Definition.create(word: "fish", meaning: "sea dweller")
  end

  test "validates correct word returned from search" do
    skip
    get search_path, q: 'cat'

    assert_response :success

    # The first table cell with class of 'words' contains the matched word
    assert_select "td.words", @word2.word
  end

  test "link exists on homepage to create new word" do
    skip
    get definitions_path

    assert_select 'div#add_word'
  end

  test "new word link shows a form" do
    skip
    get new_definition_path

    assert_select 'form.new_definition'
  end

  test "creating a new word adds the word to the database" do
    skip
    post definitions_path, definition: {word: 'pair', meaning: 'a grouping of 2 like things'}
    posted_word = Definition.find_by_word('pair')

    assert_not_nil posted_word
    assert_equal "pair", posted_word.word
    assert_equal "a grouping of 2 like things", posted_word.meaning
  end

  test "after creating a new word redirects to show page and new word is displayed" do
    skip
    post definitions_path, definition: {word: 'pair', meaning: 'a grouping of 2 like things'}
    posted_word = Definition.find_by_word('pair')

    assert_redirected_to definition_path(posted_word)

    follow_redirect!

    assert_select 'div#show_word div', posted_word.word
    assert_select 'div#show_word p'  , posted_word.meaning
  end

end
