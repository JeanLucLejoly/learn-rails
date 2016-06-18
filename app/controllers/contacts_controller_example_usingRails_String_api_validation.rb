class ContactsController < ApplicationController
	def process_form
		Rails.logger.debug "DEBUG: params are #{params}"
		if params[:contact][:name].blank?
			raise 'Name is blank!'
		end
		if params[:contact][:email].blank?
			raise 'email is blank!'
		end
		if params[:contact][:content].blank?
			raise 'Message is blank!'
		end
		

		flash[:notice] = "Recieved request from #{params[:contact][:name]}"
		redirect_to root_path
	end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
end
