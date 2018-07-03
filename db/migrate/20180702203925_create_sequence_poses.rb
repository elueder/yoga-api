class CreateSequencePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :sequence_poses do |t|
      t.references :sequence, foreign_key: true
      t.references :pose, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
