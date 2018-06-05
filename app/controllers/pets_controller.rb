class PetsController < ApplicationController
  before_action :set_group
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = @group.pets

    respond_to do |format|
      format.html
      format.xml { render :xml => @pets }
    end
  end

  def show
    @specie = Specie.find(@pet.specie_id)

    @pet = @group.pets.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render :xml => @pet }
    end

  end

  def new
    @pet = @group.pets.build

    respond_to do |format|
      format.html
      format.xml { render :xml => @pet }
    end
  end

  def edit
  end

  def create
    @pet = @group.pets.build(pet_params)

    if @pet.save
      redirect_to([@pet.group, @pet], notice: 'Pet was successfully created.')
    else
      render action: 'new'
    end
  end

  def update
    if @pet.update_attributes(pet_params)
      redirect_to([@pet.group, @pet], notice: 'Pet was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE groups/1/pets/1
  def destroy
    @pet.destroy

    redirect_to group_pets_url(@group)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_pet
    @pet = @group.pets.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def pet_params
    params.require(:pet).permit(:name, :specie_id, :bio, :birthday, :sex, :group_id, :timestamps)
  end
end
