require 'faraday'
require 'uri'
require 'net/http'

class WelcomeController < ApplicationController
  def index
  	# url = 'https://servicodados.ibge.gov.br/api/v1/paises'
  	# url = 'https://www.eventim.com.br/event/rbd-allianz-parque-16563626/?queueittoken=e_webbr1674822937~q_00000000-0000-0000-0000-000000000000~ts_1674950407~ce_true~rt_afterevent~h_3cfcfdf9dce35a4a31f42b4999bc70c33b6ff75f02109a60075d94769fa9bf58'
  	# response = Faraday.get url
  	# @citys = JSON.parse(response.body, symbolize_names: true)

		url = URI("https://www.eventim.com.br/event/rbd-allianz-parque-16563626/?queueittoken=e_webbr1674822937~q_00000000-0000-0000-0000-000000000000~ts_1674948433~ce_true~rt_afterevent~h_1c10f155643b22352f48e6ee4349e3ff4974f96bad048a08bf812c195e1a41e9")

		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		request = Net::HTTP::Get.new(url)
		request["cache-control"] = 'no-cache'
		request["postman-token"] = '7e62d610-11f7-7ca9-df02-c88a98673ccf'

		response = http.request(request)
		puts response.read_body
  end
end
