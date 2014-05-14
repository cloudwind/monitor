class CollectProcessesController < ApplicationController
  before_action :set_collect_process, only: [:show, :edit, :update, :destroy]

  # GET /collect_processes
  # GET /collect_processes.json
  def index
    @collect_processes = CollectProcess.all
  end

  # GET /collect_processes/1
  # GET /collect_processes/1.json
  def show
  end

  # GET /collect_processes/new
  def new
    @collect_process = CollectProcess.new
  end

  # GET /collect_processes/1/edit
  def edit
  end

  # POST /collect_processes
  # POST /collect_processes.json
  def create
    @collect_process = CollectProcess.new(collect_process_params)

    respond_to do |format|
      if @collect_process.save
        format.html { redirect_to @collect_process, notice: 'Collect process was successfully created.' }
        format.json { render :show, status: :created, location: @collect_process }
      else
        format.html { render :new }
        format.json { render json: @collect_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collect_processes/1
  # PATCH/PUT /collect_processes/1.json
  def update
    respond_to do |format|
      if @collect_process.update(collect_process_params)
        format.html { redirect_to @collect_process, notice: 'Collect process was successfully updated.' }
        format.json { render :show, status: :ok, location: @collect_process }
      else
        format.html { render :edit }
        format.json { render json: @collect_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collect_processes/1
  # DELETE /collect_processes/1.json
  def destroy
    @collect_process.destroy
    respond_to do |format|
      format.html { redirect_to collect_processes_url, notice: 'Collect process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collect_process
      @collect_process = CollectProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collect_process_params
      params.require(:collect_process).permit(:Pid, :User, :Cpu, :Mem, :Command)
    end
end
