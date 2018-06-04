class DutiesController < ApplicationController
  before_action :set_duty, only: [:show, :edit, :update, :destroy]

  # GET /duties
  # GET /duties.json
  def index
    @duties = Duty.all
  end

  # GET /duties/1
  # GET /duties/1.json
  def show
  end

  # GET /duties/new
  def new
    @duty = Duty.new
  end

  # GET /duties/1/edit
  def edit
  end

  # POST /duties
  # POST /duties.json
  def create
    @duty = Duty.new(duty_params)

    respond_to do |format|
      if @duty.save
        format.html { redirect_to @duty, notice: 'Duty was successfully created.' }
        format.json { render :show, status: :created, location: @duty }
      else
        format.html { render :new }
        format.json { render json: @duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duties/1
  # PATCH/PUT /duties/1.json
  def update
    respond_to do |format|
      if @duty.update(duty_params)
        format.html { redirect_to @duty, notice: 'Duty was successfully updated.' }
        format.json { render :show, status: :ok, location: @duty }
      else
        format.html { render :edit }
        format.json { render json: @duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duties/1
  # DELETE /duties/1.json
  def destroy
    @duty.destroy
    respond_to do |format|
      format.html { redirect_to duties_url, notice: 'Duty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duty
      @duty = Duty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duty_params
      params.require(:duty).permit(:name, :description, :importance, :frequency, :pet_id, :need_id, :done)
    end
end
