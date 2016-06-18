class Visitor
	include ActiveModel::Model
	attr_accessor :email, :string
	validates_presence_of :email
	validates_format_of :email, 
		with: /\A[-a-z0-9_+\.]+\@([-a-z0-9_+\.])+[-a-z0-9_+\.]{2,4}\z/i 

		def subscribe
			mailchimp = Giggon::Request.new(api_key: Rails.application.secrets.mailchimp_api_key)
			list_id = Rails.application.sectrets.mailchimp_list_id
			result = mailchimp.lists(list_id).members.create(
				body: {
					email_address: self.email,
					status: 'subscribed'
					}
			)
			Rails.logger.info("Sibscibed #{self.email} to MailChimp")  if result
		
			
		end
end
