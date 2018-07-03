class SequencesController < ProtectedController
  before_action :set_sequence, only: [:show, :update, :destroy]

  # GET /sequences
  def index
    @sequences = current_user.sequences.all

    render json: @sequences
  end

  # GET /sequences/1
  def show
    render json: @sequence
  end

  # POST /sequences
  def create
    @sequence = current_user.sequences.build(sequence_params)

    if @sequence.save
      render json: @sequence, status: :created
    else
      render json: @sequence.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sequences/1
  def update
    if @sequence.update(sequence_params)
      render json: @sequence
    else
      render json: @sequence.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sequences/1
  def destroy
    @sequence.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sequence
      @sequence = Sequence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sequence_params
      params.require(:sequence).permit(:name, :description)
    end
end
