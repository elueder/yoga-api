class AddUsersToSequenceposes < ActiveRecord::Migration[5.1]
  def change
    add_reference :sequenceposes, :user, foreign_key: true
  end
end
