class VisitorsController < ApplicationController
	def new
		##Rails.logger.debug 'DEBUG: entering new method'
		@owner = Owner.new
		##Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name
		##raise 'deliberate Raise of a Problem'
		render 'visitors/new'
	end
end
