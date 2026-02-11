class Api::V1::CardsController < Api::V1::BaseController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @cards = policy_scope(Card)
    @cards = Card.all
    render json: CardSerializer.new(@cards)
  end

  def show
    @card = Card.find(params[:id])
    authorize @card
    render json: CardSerializer.new(@card)
  end

  def create
    @card = Card.params(card_params)
    authorize @card
    if @card.save
      render json: @card, status: :created
    else
      render json: { errors: @card.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @card = Card.find(params[:id])
    authorize @card
    if @card.update(card_params)
      render json: @card, status: :created
    else
      render json: { errors: @card.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @card = Card.find(params[:id])
    authorize @card
    @card.destroy
    head :no_content
  end

  private

  def card_params
    params.require(:card).permit(
      :name, :description, :cost, :rarity, :card_type, :faction, :combatant,
      :talent, :can_epiphany, :image, :character_id
    )
  end

end
