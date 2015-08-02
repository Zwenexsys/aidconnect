class ApiController < ApplicationController
  def locations
      @locations = Location.all
  end

  def offers
      l = (params[:limit] || 10).to_i
      o = (params[:offset] || 0).to_i 
      @offers = AidOffer.all.order("created_at desc").limit(l).offset(o)
  end

  def requests
      l = (params[:limit] || 10).to_i
      o = (params[:offset] || 0).to_i 
      @aid_requests = AidRequest.all.order("created_at desc").limit(l).offset(o)
  end
end
