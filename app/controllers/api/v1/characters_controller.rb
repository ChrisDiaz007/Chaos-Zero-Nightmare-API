class Api::V1::CharactersController < ApplicationController

  def index
    @characters = Character.all
    render json: CharacterSerializer.new(@characters)
  end

  def show
    @character = Character.find(params[:id])
    render json: CharacterSerializer.new(@character)
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user
    if @character.save
      render json: @character, status: :created
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      render json: @character, status: :created
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @character = Character.find(params[:id])
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
