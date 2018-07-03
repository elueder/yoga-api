class SequencePose < ApplicationRecord
  belongs_to :user
  belongs_to :sequence
  belongs_to :pose
end
