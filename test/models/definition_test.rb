require 'test_helper'

class DefinitionTest < ActiveSupport::TestCase
  test "additions without words or meanings are not valid" do
    word = Definition.new

    refute word.valid?
  end

  test "additions without words are not valid" do
    word = Definition.new(meaning: "there is no word")

    refute word.valid?
  end

  test "additions without meanings are not valid" do
    word = Definition.new(word: "there is no meaning")

    refute word.valid?
  end

  test "additions with words and meanings are valid" do
    word = Definition.new(word: "banana", meaning: "a yummy fruit")

    assert word.valid?
  end

  test "words that already exist are not valid" do
    word   = Definition.create(word: "banana", meaning: "a yummy fruit")
    repeat = Definition.create(word: "banana", meaning: "something monkeys like")

    refute repeat.valid?
  end

  test "words are fancy if they have 17 letters or more" do
    word = Definition.new(word: "hydrotherapeutics")

    assert word.fancy?, "words with more than 16 letters should be fancy"
  end

  test "words are not fancy if they have 16 letters or less" do
    word = Definition.new(word: "subcivilizations")

    refute word.fancy?, "words with less than 17 letters are not fancy"
  end
end
