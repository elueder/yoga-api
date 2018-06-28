class AddUserToPoses < ActiveRecord::Migration[5.1]
  def change
    add_reference :poses, :user, foreign_key: true
  end
end
