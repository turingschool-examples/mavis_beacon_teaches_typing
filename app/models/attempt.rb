require 'bigdecimal'

class Attempt < ActiveRecord::Base
  belongs_to :level
  validates :text, presence: true

  def percent_correct
    correct = level.text.delete(" ").chars
    # comparison = self.text.delete(" ").chars.zip(correct)
    comparison = correct.zip(self.text.delete(" ").chars)
    wrong_counter = 0
    comparison.each do |ans, right|
      wrong_counter += 1 if ans != right
    end
    wrong = BigDecimal(wrong_counter)
    correct_count = BigDecimal(correct.count)
    percent_wrong = ((wrong / correct_count).to_f) * 100
    100 - percent_wrong.floor
    # percent_correct = BigDecimal((1 - (wrong / correct_count)) * 100)
    # percent_correct.floor
  end
end
