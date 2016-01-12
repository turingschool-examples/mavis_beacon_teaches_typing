class Level < ActiveRecord::Base
  has_many :attempts
  validates :title, presence: true
  validates :text, presence: true
end
