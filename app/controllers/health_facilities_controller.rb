class HealthFacilitiesController < ApplicationController
  before_action :set_health_facility, only: [:show, :edit, :update, :destroy]

  # GET /health_facilities
  # GET /health_facilities.json
  def index
    @health_facilities = HealthFacility.all
  end

  # GET /health_facilities/1
  # GET /health_facilities/1.json
  def show
  end

  # GET /health_facilities/new
  def new
    @health_facility = HealthFacility.new
  end

  # GET /health_facilities/1/edit
  def edit
  end

  # POST /health_facilities
  # POST /health_facilities.json
  def create
    @health_facility = HealthFacility.new(health_facility_params)

    respond_to do |format|
      if @health_facility.save
        format.html { redirect_to @health_facility, notice: 'Health facility was successfully created.' }
        format.json { render :show, status: :created, location: @health_facility }
      else
        format.html { render :new }
        format.json { render json: @health_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_facilities/1
  # PATCH/PUT /health_facilities/1.json
  def update
    respond_to do |format|
      if @health_facility.update(health_facility_params)
        format.html { redirect_to @health_facility, notice: 'Health facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_facility }
      else
        format.html { render :edit }
        format.json { render json: @health_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_facilities/1
  # DELETE /health_facilities/1.json
  def destroy
    @health_facility.destroy
    respond_to do |format|
      format.html { redirect_to health_facilities_url, notice: 'Health facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_facility
      @health_facility = HealthFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_facility_params
      params.require(:health_facility).permit(:lat, :longi, :address, :typeOf, :classOf)
    end
end
