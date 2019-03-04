class SensorAppsController < ApplicationController
  before_action :set_sensor_app, only: [:show, :edit, :update, :destroy]

  # GET /sensor_apps
  # GET /sensor_apps.json
  def index
    @sensor_apps = SensorApp.all
  end

  # GET /sensor_apps/1
  # GET /sensor_apps/1.json
  def show
  end

  # GET /sensor_apps/new
  def new
    @sensor_app = SensorApp.new
  end

  # GET /sensor_apps/1/edit
  def edit
  end

  # POST /sensor_apps
  # POST /sensor_apps.json
  def create
    @sensor_app = SensorApp.new(sensor_app_params)

    respond_to do |format|
      if @sensor_app.save
        format.html { redirect_to @sensor_app, notice: 'Sensor app was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_app }
      else
        format.html { render :new }
        format.json { render json: @sensor_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_apps/1
  # PATCH/PUT /sensor_apps/1.json
  def update
    respond_to do |format|
      if @sensor_app.update(sensor_app_params)
        format.html { redirect_to @sensor_app, notice: 'Sensor app was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_app }
      else
        format.html { render :edit }
        format.json { render json: @sensor_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_apps/1
  # DELETE /sensor_apps/1.json
  def destroy
    @sensor_app.destroy
    respond_to do |format|
      format.html { redirect_to sensor_apps_url, notice: 'Sensor app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_app
      @sensor_app = SensorApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_app_params
      params.require(:sensor_app).permit(:title)
    end
end
