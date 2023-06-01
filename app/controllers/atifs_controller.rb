class AtifsController < ApplicationController
  before_action :set_atif, only: %i[ show edit update destroy ]

  # GET /atifs or /atifs.json
  def index
    @atifs = Atif.all
  end

  # GET /atifs/1 or /atifs/1.json
  def show
  end

  # GET /atifs/new
  def new
    @atif = Atif.new
  end

  # GET /atifs/1/edit
  def edit
  end

  # POST /atifs or /atifs.json
  def create
    @atif = Atif.new(atif_params)

    respond_to do |format|
      if @atif.save
        format.html { redirect_to atif_url(@atif), notice: "Atif was successfully created." }
        format.json { render :show, status: :created, location: @atif }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atifs/1 or /atifs/1.json
  def update
    respond_to do |format|
      if @atif.update(atif_params)
        format.html { redirect_to atif_url(@atif), notice: "Atif was successfully updated." }
        format.json { render :show, status: :ok, location: @atif }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atifs/1 or /atifs/1.json
  def destroy
    @atif.destroy

    respond_to do |format|
      format.html { redirect_to atifs_url, notice: "Atif was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atif
      @atif = Atif.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atif_params
      params.require(:atif).permit(:a, :b)
    end
end
