class Api::V1::OverviewsController < Api::V1::BaseController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @overviews = policy_scope(Overview)
    @overviews = Overview.all
    @overviews = @overviews.order(id: :asc)
    authorize @overviews
    render json: OverviewSerializer.new(@overviews)
  end

  def create
    @character = Character.find(params[:character_id])
    @overview = Overview.new(overview_params)
    @overview.character = @character
    # @character = Character.find(params[:character_id])
    # @overview = @character.overviews.new(overview_params)
    authorize @overview
    if @overview.save
      render json: @overview, status: :created
    else
      render json: { errors: @overview.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @overview = @character.overviews.find(params[:id])
    authorize @overview
    if @overview.update(overview_params)
      render json: @overview
    else
      render json: { errors: @overview.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @character = Character.find(params[:character_id])
    @overview = @character.overviews.find(params[:id])
    authorize @overview
    if @overview.destroy
      render json: { message: "Overview deleted successfully" }, status: :ok
    else
      render json: { errors: @overview.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def overview_params
    params.require(:overview).permit(
      :content
    )
  end

end
