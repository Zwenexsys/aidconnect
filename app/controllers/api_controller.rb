class ApiController < ApplicationController
    protect_from_forgery except: [:create_offer, :create_request]

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

    def create_offer
        @aid_offer = AidOffer.new(aid_offer_params)
        @aid_offer.location_id = -1 if @aid_offer.location_id.nil?
        @aid_offer.code = SecureRandom.hex(3).to_s.upcase.insert(3,"-").insert(0,"O-")
        if !@aid_offer.save
            render :json => {"message": "Unprocessable Entity"},  :status => 422
        end
        render :json => {"message": "OK"}, :status => 201
    end

    def create_request
        @aid_request = AidRequest.new(aid_request_params)
        @aid_request.location_id = -1 if @aid_request.location_id.nil?
        @aid_request.code = SecureRandom.hex(3).to_s.upcase.insert(3,"-").insert(0,"O-")
        if @aid_request.save
            render :json => {"message": "OK"}, :status => 201
        else
            render :json => {"message": "Unprocessable Entity"},  :status => 422
        end

    end
    private
    def aid_offer_params
        params.require(:aid_offer).permit(:name, :phone, :nric, :content, :location_id)
    end

    def aid_request_params
        params.require(:aid_request).permit(:name, :phone, :nric, :content, :location_id)
    end
end
