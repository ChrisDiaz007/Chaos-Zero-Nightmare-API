class Api::V1::SaveDecksController < Api::V1::BaseController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @decks = policy_scope(SaveDeck)
    @decks = SaveDeck.all
    render json: SaveDeckSerializer.new(@decks)
  end

  def show
    @deck = SaveDeck.find(params[:id])
    authorize @deck
    render json: SaveDeckSerializer.new(@deck)
  end

  def create
    @deck = SaveDeck.new(deck_params)
    authorize @deck
    if @deck.save
      render json: @deck, status: :created
    else
      render json: { errors: @deck.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @deck = SaveDeck.find(params[:id])
    authorize @deck
    if @deck.update(deck_params)
      render json: @deck, status: :created
    else
      render json: { errors: @deck.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @deck = SaveDeck.find(params[:id])
    authorize @deck
    @deck.destroy
    head :no_content
  end

  private

  def deck_params
    params.require(:save_deck).permit(
      :name, :description, :character_id, :partner_id, :user_id, :weapon_id, :armor_id,
      :accessory_id
    )
  end

end
