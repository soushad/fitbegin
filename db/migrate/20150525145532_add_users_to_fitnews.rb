class AddUsersToFitnews < ActiveRecord::Migration
  def change
    add_reference :fitnews, :user, index: true, foreign_key: true
  end
end
