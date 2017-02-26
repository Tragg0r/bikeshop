class UserMailer < ApplicationMailer
	default from: "d.schmidt86@outlook.com"

  	def contact_form(email, name, message)
  	@message = message
    	mail(:from => email,
        	:to => 'd.schmidt86@outlook.com',
        	:subject => "A new contact form message from #{name}")
  	end

  	def welcome(user)
  	@appname = "BIKESHOP BOTTROP"
  		mail( :to => user.email,
        	:subject => "Welcome to #{@appname}!")
	end

end
