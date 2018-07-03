class SequencePosesController < ProtectedController
  before_action :set_sequence_pose, only: [:show, :update, :destroy]

  # GET /sequence_poses
  def index
    @sequence_poses = current_user.sequence_poses.all

    render json: @sequence_poses
  end

  # GET /sequence_poses/1
  def show
    render json: @sequence_pose
  end

  # POST /sequence_poses
  def create
    @sequence_pose = current_user.sequence_poses.build(sequence_pose_params)

    if @sequence_pose.save
      render json: @sequence_pose, status: :created
    else
      render json: @sequence_pose.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sequence_poses/1
  def update
    if @sequence_pose.update(sequence_pose_params)
      render json: @sequence_pose
    else
      render json: @sequence_pose.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sequence_poses/1
  def destroy
    @sequence_pose.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sequence_pose
      @sequence_pose = SequencePose.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sequence_pose_params
      params.require(:sequence_pose).permit(:sequence_id, :pose_id, :order)
    end
end
