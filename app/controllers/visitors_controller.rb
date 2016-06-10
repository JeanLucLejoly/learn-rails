class VisitorsController < ApplicationController
	def new
		Rails.logger.debug 'DEBUG: entering new method'
		@owner = Owner.new
		Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name
		flash.now[:notice] = 'Welcome!'
		flash[:alert] = 'My birthday is soon'


		##raise 'deliberate Raise of a Problem'
		render 'visitors/new'
	end
end
