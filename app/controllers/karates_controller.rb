class KaratesController < ApplicationController
  skip_before_action :authorize_request, only: %i[ index show ]
  before_action :set_karate, only: %i[ show update destroy ]

  # GET /karates
  def index
    @karates = Karate.all

    render json: @karates
  end

  # GET /karates/1
  def show
    render json: @karate
  end

  # POST /karates
  def create
    @karate = Karate.new(karate_params)

    if @karate.save
      render json: @karate, status: :created, location: @karate
    else
      render json: @karate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /karates/1
  def update
    if @karate.update(karate_params)
      render json: @karate
    else
      render json: @karate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /karates/1
  def destroy
    @karate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karate
      @karate = Karate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def karate_params
      params.require(:karate).permit(:name, :second_name, :country, :activity)
    end
end
