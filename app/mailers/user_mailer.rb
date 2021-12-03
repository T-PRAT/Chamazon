class UserMailer < ApplicationMailer
	default from: "Chaton@chamazon.fr"

	def welcome_email()
     mail(to: "Titouan.p@hotmail.fr",
          subject: "This is a nice welcome email")
   end
end
