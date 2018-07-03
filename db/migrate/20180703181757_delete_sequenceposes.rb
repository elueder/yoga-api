class DeleteSequenceposes < ActiveRecord::Migration[5.1]
  def change
    drop_table :sequenceposes
  end
end
