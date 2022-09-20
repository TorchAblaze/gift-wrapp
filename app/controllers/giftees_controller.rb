class GifteesController < ApplicationController
  before_action :set_giftee, only: %i[ show edit update destroy ]

  # GET /giftees or /giftees.json
  def index
    @giftees = Giftee.all
  end

  # GET /giftees/1 or /giftees/1.json
  def show
  end

  # GET /giftees/new
  def new
    @giftee = Giftee.new
  end

  # GET /giftees/1/edit
  def edit
  end

  # POST /giftees or /giftees.json
  def create
    @giftee = Giftee.new(giftee_params)

    respond_to do |format|
      if @giftee.save
        format.html { redirect_to giftee_url(@giftee), notice: "Giftee was successfully created." }
        format.json { render :show, status: :created, location: @giftee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @giftee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giftees/1 or /giftees/1.json
  def update
    respond_to do |format|
      if @giftee.update(giftee_params)
        format.html { redirect_to giftee_url(@giftee), notice: "Giftee was successfully updated." }
        format.json { render :show, status: :ok, location: @giftee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @giftee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giftees/1 or /giftees/1.json
  def destroy
    @giftee.destroy

    respond_to do |format|
      format.html { redirect_to giftees_url, notice: "Giftee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giftee
      @giftee = Giftee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def giftee_params
      params.fetch(:giftee).permit(:name)
    end
end
