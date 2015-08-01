class GeneralOffersController < ApplicationController
  before_action :set_general_offer, only: [:show, :edit, :update, :destroy]

  # GET /general_offers
  # GET /general_offers.json
  def index
    @general_offers = GeneralOffer.all
  end

  # GET /general_offers/1
  # GET /general_offers/1.json
  def show
  end

  # GET /general_offers/new
  def new
    @general_offer = GeneralOffer.new
  end

  # GET /general_offers/1/edit
  def edit
  end

  # POST /general_offers
  # POST /general_offers.json
  def create
    @general_offer = GeneralOffer.new(general_offer_params)

    respond_to do |format|
      if @general_offer.save
        format.html { redirect_to @general_offer, notice: 'General offer was successfully created.' }
        format.json { render :show, status: :created, location: @general_offer }
      else
        format.html { render :new }
        format.json { render json: @general_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_offers/1
  # PATCH/PUT /general_offers/1.json
  def update
    respond_to do |format|
      if @general_offer.update(general_offer_params)
        format.html { redirect_to @general_offer, notice: 'General offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_offer }
      else
        format.html { render :edit }
        format.json { render json: @general_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_offers/1
  # DELETE /general_offers/1.json
  def destroy
    @general_offer.destroy
    respond_to do |format|
      format.html { redirect_to general_offers_url, notice: 'General offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_offer
      @general_offer = GeneralOffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_offer_params
      params.require(:general_offer).permit(:name, :phone, :nric, :content)
    end
end
