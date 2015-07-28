class AirMonitorDatabasesController < ApplicationController
  before_action :set_air_monitor_database, only: [:show, :edit, :update, :destroy]

  # GET /air_monitor_databases
  # GET /air_monitor_databases.json
  def index
    @air_monitor_databases = AirMonitorDatabase.all
  end

  # GET /air_monitor_databases/1
  # GET /air_monitor_databases/1.json
  def show
  end

  # GET /air_monitor_databases/new
  def new
    @air_monitor_database = AirMonitorDatabase.new
  end

  # GET /air_monitor_databases/1/edit
  def edit
  end

  # POST /air_monitor_databases
  # POST /air_monitor_databases.json
  def create
    @air_monitor_database = AirMonitorDatabase.new(air_monitor_database_params)

    respond_to do |format|
      if @air_monitor_database.save
        format.html { redirect_to @air_monitor_database, notice: 'Air monitor record was successfully created.' }
        format.json { render :show, status: :created, location: @air_monitor_database }
      else
        format.html { render :new }
        format.json { render json: @air_monitor_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_monitor_databases/1
  # PATCH/PUT /air_monitor_databases/1.json
  def update
    respond_to do |format|
      if @air_monitor_database.update(air_monitor_database_params)
        format.html { redirect_to @air_monitor_database, notice: 'Air monitor record was successfully updated.' }
        format.json { render :show, status: :ok, location: @air_monitor_database }
      else
        format.html { render :edit }
        format.json { render json: @air_monitor_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_monitor_databases/1
  # DELETE /air_monitor_databases/1.json
  def destroy
    @air_monitor_database.destroy
    respond_to do |format|
      format.html { redirect_to air_monitor_databases_url, notice: 'Air monitor record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_monitor_database
      @air_monitor_database = AirMonitorDatabase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_monitor_database_params
      params.require(:air_monitor_database).permit(:pm10data, :noadata, :fieldengineer)
    end
end
