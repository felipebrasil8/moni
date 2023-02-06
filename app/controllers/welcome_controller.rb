require 'open-uri'

class WelcomeController < ApplicationController
  def index
    @html = URI.open(url)
    @url = url

    render template: "eventim/index"
  end
end
