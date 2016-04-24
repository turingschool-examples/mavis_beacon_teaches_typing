require 'bigdecimal'

class Attempt < ActiveRecord::Base
  belongs_to :level
  validates :text, presence: true

  def percent_correct
    compare(correct, answer)
    calculate_percent_correct
  end

  private

  def correct
    # get rid of spaces in level_text and get array of chars
    level.text.delete(" ").chars
  end

  def answer
    # get rid of spaces in attempt_text and get array of chars
    text.delete(" ").chars
  end

  def compare(correct, answer)
    # zip the two arrays together, starting with level_text to get
    # the math to work out right so that a attempt_text that is
    # shorter doesn't cut off parts of the level_text
    @wrong_counter = 0
    correct.zip(answer).each do |ans, right|
      @wrong_counter += 1 if ans != right
    end
  end

  def calculate_percent_correct
    # good luck with the arithmatic
    wrong = BigDecimal(@wrong_counter)
    correct_count = BigDecimal(correct.count)
    percent_wrong = ((wrong / correct_count).to_f) * 100
    100 - percent_wrong.floor
  end
end
