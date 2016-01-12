class Attempt < ActiveRecord::Base
  belongs_to :level
  validates :text, presence: true
end
