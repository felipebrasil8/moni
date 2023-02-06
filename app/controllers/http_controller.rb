require "httparty"

class HttpController < ApplicationController
  def index
		response = HTTParty.get(url)
		@html = response.body
    @url = url

    render template: "eventim/index"
  end
end