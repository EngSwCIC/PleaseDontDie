class DutiesController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  before_action :set_duty, only: [:show, :edit, :update, :destroy]

  def index
    @duties = Duty.all
  end

  def show
  end

  def new
    @duty = Duty.new
  end

  def edit
  end

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

  def destroy
    @duty.destroy
    respond_to do |format|
      format.html { redirect_to duties_url, notice: 'Duty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pet
      @pet = Pet.find(params[:pet_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_duty
      @duty = Duty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duty_params
      params.require(:duty).permit(:name, :description, :importance, :frequency, :pet_id, :need_id, :done)
    end
end
