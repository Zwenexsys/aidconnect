class HomeController < ApplicationController
  def index
    @locations = Location.where("status <> 'NORMAL'").includes([:aid_requests, :aid_offers]).order(:seq).order(:township)
    @requests = AidRequest.all.order("created_at desc").limit(5)
    @offers = AidOffer.all.order("created_at desc").limit(5)
  end
end
