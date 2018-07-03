class SequencePoseSerializer < ActiveModel::Serializer
  attributes :id, :order
  has_one :sequence
  has_one :pose
end
