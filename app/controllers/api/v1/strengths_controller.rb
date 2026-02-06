class Api::V1::StrengthsController < Api::V1::BaseController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @strengths = policy_scope(Strength)
    @strengths = Strength.all
    @strengths = @strengths.order(id: :asc)
    authorize @strengths
    render json: StrengthSerializer.new(@strengths)
  end

  # def show
  #   @character = Character.find(params[:character_id])
  #   @strength = @character.strengths.find(params[:id])
  #   authorize @strength
  #   render json: @strength
  # end

  def create
    @character = Character.find(params[:character_id])
    @strength = Strength.new(strength_params)
    @strength.character = @character
    authorize @strength
    if @strength.save
      render json: @strength, status: :created
    else
      render json: { errors: @strength.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @strength = @character.strengths.find(params[:id])
    authorize @strength
    if @strength.update(strength_params)
      render json: @strength
    else
      render json: { errors: @strength.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @character = Character.find(params[:character_id])
    @strength = @character.strengths.find(params[:id])
    authorize @strength
    if @strength.destroy
      render json: { message: "Strength deleted successfully" }, status: :ok
    else
      render json: { errors: @strength.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def strength_params
    params.require(:strength).permit(
      :content
    )
  end

end
