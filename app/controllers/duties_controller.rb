class DutiesController < ApplicationController
  before_action :set_pet 
  before_action :set_duty, only: [:show, :edit, :update, :destroy]

  def index
    @duties = Duty.all
  end

  def show
  end

  def new
    @duty = @pet.duties.build

    respond_to do |format|
      format.html
      format.xml { render :xml => @duty }
    end
  end

  def edit
  end

  def create
    @duty = @pet.duties.build(duty_params)

    if @duty.save
      redirect_to([@duty.pet, @duty], notice: 'Afazer criado!')
    else
      render action: 'new'
    end
  end

  def update
    if @duty.update_attributes(duty_params)
      redirect_to([@duty.pet, @duty], notice: 'Afazer atualizado!')
    else
      render action: 'edit'
    end
  end

  def destroy
    @duty.destroy
    respond_to do |format|
      format.html { redirect_to pet_duties_url(@pet), notice: 'Afazer destruído!' }
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
