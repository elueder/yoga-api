class CreateSequenceposes < ActiveRecord::Migration[5.1]
  def change
    create_table :sequenceposes do |t|
      t.references :pose, foreign_key: true
      t.references :sequence, foreign_key: true

      t.timestamps
    end
  end
end
