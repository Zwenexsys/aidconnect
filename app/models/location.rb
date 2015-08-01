class Location < ActiveRecord::Base

    has_many :aid_requests
    has_many :aid_offers
    has_many :news_posts
    has_many :shelters
end
