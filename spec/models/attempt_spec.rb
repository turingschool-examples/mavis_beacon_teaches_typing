require 'rails_helper'

describe Attempt do
  it "test_it_is_valid_with_text" do
    assert Attempt.new(text: "Here is a typing test.").valid?
  end

  it "test_it_is_not_valid_with_empty_text" do
    refute Attempt.new(text: "").valid?
  end

  it "test_it_scores_text_of_attempt" do
    level_text   = "Here is a typing test."
    attempt_text = "Here is a typing text."

    level   = Level.new(title: "Level 1", text: level_text)
    attempt = level.attempts.new(text: attempt_text)

    assert_equal 95, attempt.percent_correct
  end

end
