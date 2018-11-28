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
    ## A CHANGER 
   def admin_order(amount)
    @amount = amount
     mail(from: "thehackingproject.lille@gmail.com", to: "thehackingproject.lille@gmail.com", subject: "Nouvelle commande passée")
  end


end
