class NeedsController < ApplicationController
  before_action :set_needs
  before_action :set_need, only: [:show, :edit, :update, :destroy]

  # GET /needs
  # GET /needs.json
  def index
    specie = Specie.find(params[:species_id])

    @needs = specie.needs

    respond_to do |format|
      format.html
      format.xml { render :xml => @needs }
    end
  end

  # GET /needs/1
  # GET /needs/1.json
  def show
    specie = Specie.find(params[:species_id])

    @need = specie.needs.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render :xml => @need }
    end
  end

  # GET /needs/new
  def new
    specie = Specie.find(params[:species_id])

    @need = specie.needs.build

    respond_to do |format|
      format.html
      format.xml { render :xml => @need }
    end
  end

  # GET /needs/1/edit
  def edit
  end

  # POST /needs
  # POST /needs.json
  def create
    @need = @specie.needs.build(need_params)

    respond_to do |format|
      if @need.save
        format.html { redirect_to [@need.specie, @need], notice: 'Necessidade foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @need }
      else
        format.html { render :new }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needs/1
  # PATCH/PUT /needs/1.json
  def update
    respond_to do |format|
      if @need.update(need_params)
        format.html { redirect_to [@need.specie, @need], notice: 'Necessidade foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @need }
      else
        format.html { render :edit }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needs/1
  # DELETE /needs/1.json
  def destroy
    @need.destroy

    respond_to do |format|
      format.html { redirect_to species_needs_path(@specie), notice: 'Necessidade foi apagada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_needs
      @specie = Specie.find(params[:species_id])
    end

    def set_need
      @need = @specie.needs.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def need_params
      params.require(:need).permit(:name, :description, :importance, :frequency, :specie_id)
    end
end
