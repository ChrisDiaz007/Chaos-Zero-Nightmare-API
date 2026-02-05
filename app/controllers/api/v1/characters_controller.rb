class Api::V1::CharactersController < Api::V1::BaseController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @characters = policy_scope(Character)

    if params[:name].present?
      @characters = Character.where('name ILIKE ?', "%#{params[:name]}%")
    else
      @characters = Character.all
    end

    render json: CharacterSerializer.new(@characters)
  end

  def show
    @character = Character.find(params[:id])
    authorize @character
    render json: CharacterSerializer.new(@character)
  end

  def new
    @character = Character.new
    authorize @character
  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user
    authorize @character
    if @character.save
      render json: @character, status: :created
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
    @character = Character.find(params[:id])
    authorize @character
  end

  def update
    @character = Character.find(params[:id])
    authorize @character
    if @character.update(character_params)
      render json: @character, status: :created
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @character = Character.find(params[:id])
    authorize @character
    @character.destroy
    head :no_content
  end

  private

  def character_params
    params.require(:character).permit(
      :name, :character_attribute, :character_class,
      :role, :rating, overview: [], strengths: [], weaknesses: []
    )
  end

end
