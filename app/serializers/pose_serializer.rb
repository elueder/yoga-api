class PoseSerializer < ActiveModel::Serializer
  attributes :id, :pose_name, :muscle_action, :cues, :editable

  def editable
    scope == object.user
  end
end
