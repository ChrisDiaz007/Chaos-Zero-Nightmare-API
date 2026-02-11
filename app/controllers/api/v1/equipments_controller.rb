class Api::V1::EquipmentsController < Api::V1::BaseController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @equipments = policy_scope(Equipment)
    @equipments = Equipment.all
    render json: EquipmentSerializer.new(@equipments)
  end

  def show
    @equipment = Equipment.find(params[:id])
    authorize @equipment
    render json: EquipmentSerializer.new(@equipment)
  end

  def create
    @equipment = Equipment.new(equipment_params)
    authorize @equipment
    if @equipment.save
      render json: @equipment, status: created
    else
      render json: { errors: @equipment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @equipment = Equipment.find(params[:id])
    authorize @equipment
    if @equipment.update(equipment_params)
      render json: @equipment, status: :Created
    else
    render json: { errors: @equipment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    authorize @equipment
    @equipment.destroy
    head :no_content
  end

  private

  def equipment_params
    params.require(:equipment).permit(
      :name, :category, :rarity, :rating, :zero_system, :attack, :defense,
      :health, :image
    )
  end

end
