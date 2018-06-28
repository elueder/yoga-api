class CreatePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :poses do |t|
      t.string :pose_name
      t.string :muscle_action
      t.string :cues

      t.timestamps
    end
  end
end
