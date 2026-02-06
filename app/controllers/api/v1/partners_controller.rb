class Api::V1::PartnersController < Api::V1::BaseController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @partners = policy_scope(Partner)
    @partners = Partner.all
    render json: PartnerSerializer.new(@partners)
  end

  def show
    @partner = Partner.find(params[:id])
    authorize @partner
    render json: PartnerSerializer.new(@partner)
  end

  def create
    @partner = Partner.new(partner_params)
    authorize @partner
    if @partner.save
      render json: @partner, status: :created
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @partner = Partner.find(params[:id])
    if @partner.update(partner_params)
      render json: @partner, status: :created
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @partner = Partner.find(params[:id])
    authorize @partner
    @partner.destroy
    head :no_content
  end

  private

  def partner_params
    params.require(:partner).permit(
      :name, :character_class, overview: [], passive: [], ego: []
    )
  end
end
