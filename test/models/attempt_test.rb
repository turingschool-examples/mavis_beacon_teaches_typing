require 'test_helper'

class AttemptTest < ActiveSupport::TestCase
  def test_it_is_valid_with_text
    assert Attempt.new(text: "Here is a typing test.").valid?
  end

  def test_it_is_not_valid_with_empty_text
    refute Attempt.new(text: "").valid?
  end

  def test_it_scores_text_of_attempt
    level_text   = "Here is a typing test."
    attempt_text = "Here is a typing text."

    level   = Level.new(title: "Level 1", text: level_text)
    attempt = level.attempts.new(text: attempt_text)
    
    assert_equal 95, attempt.percent_correct
  end
end
