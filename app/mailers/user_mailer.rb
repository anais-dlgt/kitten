class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
     mail(from: "thehackingproject.lille@gmail.com", to: @user,
          subject: "Bienvenue sur Matouri")
   end

   def user_order(email, cart)
    @email = email
    @cart = cart
    mail(from: "thehackingproject.lille@gmail.com", to: email, subject: "Votre commande")
   end


end
