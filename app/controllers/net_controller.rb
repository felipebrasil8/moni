require 'open-uri'
require 'net/http'

class NetController < ApplicationController
  def index
		uri = URI.parse(url)

		response = Net::HTTP.get_response(uri)
		@html = response.body
    @url = url

    render template: "eventim/index"
  end
end