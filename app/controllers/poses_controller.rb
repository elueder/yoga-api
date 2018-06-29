class PosesController < ProtectedController
  before_action :set_pose, only: [:show, :update, :destroy]

  # GET /poses
  def index
    @poses = current_user.poses.all

    render json: @poses
  end

  # GET /poses/1
  def show
    render json: @pose
  end

  # POST /poses
  def create
    @pose = current_user.poses.build(pose_params)

    if @pose.save
      render json: @pose, status: :created
    else
      render json: @pose.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poses/1
  def update
    if @pose.update(pose_params)
      render json: @pose
    else
      render json: @pose.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poses/1
  def destroy
    @pose.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pose
      @pose = Pose.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pose_params
      params.require(:pose).permit(:pose_name, :muscle_action, :cues)
    end
end
