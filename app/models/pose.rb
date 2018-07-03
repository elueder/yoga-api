class Pose < ApplicationRecord
  belongs_to :user
  has_many :sequence_poses
  has_many :sequences, through: :sequence_poses
end
