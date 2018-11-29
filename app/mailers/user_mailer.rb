class UserMailer < ApplicationMailer

  
   def user_order(email, cart)
    @email = email
    @cart = cart
    mail(from: "thehackingproject.lille@outlook.fr", to: email, subject: "Votre commande")
   end
    ## A CHANGER
   def admin_order(amount)
    @amount = amount
     mail(from: "thehackingproject.lille@outlook.fr", to: "ait.mus06@gmail.com", subject: "Nouvelle commande passée")
  end


end
