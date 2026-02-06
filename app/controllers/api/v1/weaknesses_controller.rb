class Api::V1::WeaknessesController < Api::V1::BaseController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @weaknesses = policy_scope(Weakness)
    @weaknesses = Weakness.all
    @weaknesses = @weaknesses.order(id: :asc)
    authorize @weaknesses
    render json: WeaknessSerializer.new(@weaknesses)
  end

  def create
    @character = Character.find(params[:character_id])
    @weakness = Weakness.new(weakness_params)
    @weakness.character = @weakness
    authorize @weakness
    if @weakness.save
      render json: @weakness, status: :created
    else
      render json: { errors: @weakness.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @weakness = @character.weaknesses.find(params[:id])
    authorize @weakness
    if @weakness.update(strength_params)
      render json: @weakness
    else
      render json: { errors: @weakness.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @character = Character.find(params[:character_id])
    @weakness = @character.weaknesses.find(params[:id])
    authorize @weakness
    if @weakness.destroy
      render json: { message: "Weakness deleted successfully" }, status: :ok
    else
      render json: { errors: @weakness.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def weakness_params
    params.require(:weakness).permit(
      :content
    )
  end

end
