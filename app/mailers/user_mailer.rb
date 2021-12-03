class UserMailer < ApplicationMailer
	default from: "Chaton@chamazon.fr"

     def order
          @cart = Cart.find(params[:id])
          mail(to: "", subject: "Votre commande est là !")
     end
end
