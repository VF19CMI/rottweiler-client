require "rottweiler/client/version"
require "httparty"
module Rottweiler
  class Client
    include HTTParty
    def initialize(site)
      @site = site
    end

    def create_user(attributes)
      HTTParty.post(@site + '/users/create', 
        :body => { user: attributes }.to_json,
        :headers => { 'Content-Type' => 'application/json' } )
    end

    def check_user(attributes)
      HTTParty.post(@site + '/users/check', 
        :body => attributes.to_json,
        :headers => { 'Content-Type' => 'application/json' } )
    end
    def update_user(attributes)
      HTTParty.post(@site + '/users/update', 
        :body => attributes.to_json,
        :headers => { 'Content-Type' => 'application/json' } )
    end
    def validate_credentials(attributes)
      HTTParty.post(@site + '/users/validate_credentials', 
        :body => attributes.to_json,
        :headers => { 'Content-Type' => 'application/json' } )
    end
  end
end
