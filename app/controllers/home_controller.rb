class HomeController < ApplicationController
  layout 'striking' , :only => ["index"]

  def index
    @locations = Location.where("status <> 'NORMAL'").includes([:aid_requests, :aid_offers]).order(:seq).order(:township)
    @requests = AidRequest.all.order("created_at desc").limit(5)
    @offers = AidOffer.all.order("created_at desc").limit(5)
  end

  def about
  end

  def offers
    @offers = AidOffer.all.includes(:location).order("created_at desc").limit(1000)
  end

  def requests
    @requests = AidRequest.all.includes(:location).order("created_at desc").limit(1000)
  end

  def offer_detail
    @aid_offer = AidOffer.find_by_code(params[:code])
    render :template => "aid_offers/show"
  end

  def request_detail
    @aid_request = AidRequest.find_by_code(params[:code])
    render :template => "aid_requests/show"
  end

end
