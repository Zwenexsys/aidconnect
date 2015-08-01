class AidOffersController < ApplicationController
  before_action :set_aid_offer, only: [:show, :edit, :update, :destroy]

  # GET /aid_offers
  # GET /aid_offers.json
  def index
    @aid_offers = AidOffer.all
  end

  # GET /aid_offers/1
  # GET /aid_offers/1.json
  def show
  end

  # GET /aid_offers/new
  def new
    @aid_offer = AidOffer.new
  end

  # GET /aid_offers/1/edit
  def edit
  end

  # POST /aid_offers
  # POST /aid_offers.json
  def create
    @aid_offer = AidOffer.new(aid_offer_params)

    respond_to do |format|
      if @aid_offer.save
        format.html { redirect_to @aid_offer, notice: 'Aid offer was successfully created.' }
        format.json { render :show, status: :created, location: @aid_offer }
      else
        format.html { render :new }
        format.json { render json: @aid_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aid_offers/1
  # PATCH/PUT /aid_offers/1.json
  def update
    respond_to do |format|
      if @aid_offer.update(aid_offer_params)
        format.html { redirect_to @aid_offer, notice: 'Aid offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @aid_offer }
      else
        format.html { render :edit }
        format.json { render json: @aid_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aid_offers/1
  # DELETE /aid_offers/1.json
  def destroy
    @aid_offer.destroy
    respond_to do |format|
      format.html { redirect_to aid_offers_url, notice: 'Aid offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aid_offer
      @aid_offer = AidOffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aid_offer_params
      params.require(:aid_offer).permit(:name, :phone, :nric, :content, :location_id)
    end
end
