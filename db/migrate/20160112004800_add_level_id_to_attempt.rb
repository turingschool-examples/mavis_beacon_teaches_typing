class AddLevelIdToAttempt < ActiveRecord::Migration
  def change
    add_reference :attempts, :level, index: true, foreign_key: true
  end
end
