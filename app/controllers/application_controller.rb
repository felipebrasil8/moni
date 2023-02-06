class ApplicationController < ActionController::Base
	def url
		ENV['URL'] || 'https://www.eventim.com.br/event/rbd-allianz-parque-16562741'
	end
end
