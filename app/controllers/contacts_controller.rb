class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(secure_params)
		if @contact.valid?
			# TODO send message
			UserMailer.contact_email(@contact).deliver_now
			flash[:notice] = "Message sent from #{@contact.name}."
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def secure_params
		params.require(:contact).permit(:name, :email, :content)
	end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
end
