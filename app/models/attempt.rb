class Attempt < ActiveRecord::Base
  belongs_to :level
  validates :text, presence: true

  def percent_correct
    byebug
  end
end
