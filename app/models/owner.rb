class Owner

	def name
		name = 'Foobar Kadigan'
	end

	def birthdate
		birthdate = Date.new(1990, 12, 22)
	end

	def countdown
		Rails.logger.debug 'DEBUG: Entering in tthe countdown method'

		today = Date.today
		birthday = Date.new(today.year, birthdate.month, birthdate.day)
		if birthday > today
			countdown = (birthday - today).to_i
		else
			countdown = (birthday.next_year - today).to_i
		end
		Rails.logger.debug 'DEBUG: found countdown ' +countdown.to_s

	end
end


