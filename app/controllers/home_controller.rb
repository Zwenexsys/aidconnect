class HomeController < ApplicationController
  def index
    @locations = Location.where("status <> 'NORMAL'").includes([:aid_requests, :aid_offers])
    .order(:seq).order(:township)
  end
end
