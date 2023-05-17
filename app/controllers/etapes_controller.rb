class EtapesController < ApplicationController
  before_action :set_etape, only: %i[ show edit update destroy ]

  # GET /etapes or /etapes.json
  def index
    @etapes = Etape.all
  end

  # GET /etapes/1 or /etapes/1.json
  def show
  end

  # GET /etapes/new
  def new
    @etape = Etape.new
  end

  # GET /etapes/1/edit
  def edit
  end

  # POST /etapes or /etapes.json
  def create
    @etape = Etape.new(etape_params)

    respond_to do |format|
      if @etape.save
        format.html { redirect_to etape_url(@etape), notice: "Etape was successfully created." }
        format.json { render :show, status: :created, location: @etape }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @etape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etapes/1 or /etapes/1.json
  def update
    respond_to do |format|
      if @etape.update(etape_params)
        format.html { redirect_to etape_url(@etape), notice: "Etape was successfully updated." }
        format.json { render :show, status: :ok, location: @etape }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @etape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etapes/1 or /etapes/1.json
  def destroy
    @etape.destroy

    respond_to do |format|
      format.html { redirect_to etapes_url, notice: "Etape was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etape
      @etape = Etape.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etape_params
      params.require(:etape).permit(:dossier_id, :user_id, :commentaire)
    end
end
