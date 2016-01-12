require 'test_helper'

class LevelTest < ActiveSupport::TestCase
  def test_it_is_valid_with_text
    assert Level.new(title: "Easy", text: "Here is a typing test.").valid?
  end

  def test_it_is_not_valid_with_empty_text
    refute Level.new(title: "Easy", text: "").valid?
  end

  def test_it_is_not_valid_with_empty_title
    refute Level.new(title: "", text: "Here is a typing test.").valid?
  end
end
