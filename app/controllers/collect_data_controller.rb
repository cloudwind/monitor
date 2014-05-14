class CollectDataController < ApplicationController
  before_action :set_collect_datum, only: [:show, :edit, :update, :destroy]

  # GET /collect_data
  # GET /collect_data.json
  def index
    @collect_data = CollectDatum.all
  end

  # GET /collect_data/1
  # GET /collect_data/1.json
  def show
  end

  # GET /collect_data/new
  def new
    @collect_datum = CollectDatum.new
  end

  # GET /collect_data/1/edit
  def edit
  end

  # POST /collect_data
  # POST /collect_data.json
  def create
    @collect_datum = CollectDatum.new(collect_datum_params)

    respond_to do |format|
      if @collect_datum.save
        format.html { redirect_to @collect_datum, notice: 'Collect datum was successfully created.' }
        format.json { render :show, status: :created, location: @collect_datum }
      else
        format.html { render :new }
        format.json { render json: @collect_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collect_data/1
  # PATCH/PUT /collect_data/1.json
  def update
    respond_to do |format|
      if @collect_datum.update(collect_datum_params)
        format.html { redirect_to @collect_datum, notice: 'Collect datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @collect_datum }
      else
        format.html { render :edit }
        format.json { render json: @collect_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collect_data/1
  # DELETE /collect_data/1.json
  def destroy
    @collect_datum.destroy
    respond_to do |format|
      format.html { redirect_to collect_data_url, notice: 'Collect datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collect_datum
      @collect_datum = CollectDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collect_datum_params
      params.require(:collect_datum).permit(:BandwidthTran, :BandwidthRec, :BandwidthTranP, :BandwidthRecP, :CPUTotal, :CPUUser, :CPUSys, :DiskUsed, :DiskFree, :LoadAVG, :MemTotal, :MemFree)
    end
end
