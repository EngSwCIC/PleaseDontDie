class SpeciesController < ApplicationController
  before_action :set_species, only: [:show, :edit, :update, :destroy]

  def index
    @species = Specie.all
  end

  def show
    @specie = Specie.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render :xml => @specie }
    end
  end

  def new
    @species = Specie.new
  end

  def edit
  end

  def create
    @species = Specie.new(species_params)

    respond_to do |format|
      if @species.save
        format.html { redirect_to @species, notice: 'Specie was successfully created.' }
        format.json { render :show, status: :created, location: @species }
      else
        format.html { render :new }
        format.json { render json: @species.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @species.update(species_params)
        format.html { redirect_to @species, notice: 'Specie was successfully updated.' }
        format.json { render :show, status: :ok, location: @species }
      else
        format.html { render :edit }
        format.json { render json: @species.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @species.destroy
    respond_to do |format|
      format.html { redirect_to species_url, notice: 'Specie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_species
      @species = Specie.find(params[:id])
    end

    def species_params
      params.require(:specie).permit(:name, :description)
    end
end
