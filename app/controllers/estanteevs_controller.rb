class EstanteevsController < ApplicationController
  before_action :set_estanteev, only: [:show, :edit, :update, :destroy]

  # GET /estanteevs
  # GET /estanteevs.json
  def index
    @estanteevs = Estanteev.all
  end

  # GET /estanteevs/1
  # GET /estanteevs/1.json
  def show
  end

  # GET /estanteevs/new
  def new
    @estanteev = Estanteev.new
  end

  # GET /estanteevs/1/edit
  def edit
  end

  # POST /estanteevs
  # POST /estanteevs.json
  def create
    @estanteev = Estanteev.new(estanteev_params)

    respond_to do |format|
      if @estanteev.save
        format.html { redirect_to @estanteev, notice: 'Estanteev was successfully created.' }
        format.json { render :show, status: :created, location: @estanteev }
      else
        format.html { render :new }
        format.json { render json: @estanteev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estanteevs/1
  # PATCH/PUT /estanteevs/1.json
  def update
    respond_to do |format|
      if @estanteev.update(estanteev_params)
        format.html { redirect_to @estanteev, notice: 'Estanteev was successfully updated.' }
        format.json { render :show, status: :ok, location: @estanteev }
      else
        format.html { render :edit }
        format.json { render json: @estanteev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estanteevs/1
  # DELETE /estanteevs/1.json
  def destroy
    @estanteev.destroy
    respond_to do |format|
      format.html { redirect_to estanteevs_url, notice: 'Estanteev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estanteev
      @estanteev = Estanteev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estanteev_params
      params.require(:estanteev).permit(:nome)
    end
end
