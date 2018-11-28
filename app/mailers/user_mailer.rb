class UserMailer < ApplicationMailer

  def user_mail(user)

   mail(
     to: @user.email,
     delivery_method_options: {
       api_key: Rails.application.credentials[:public_key_mailjet],
       secret_key: Rails.application.credentials[:secret_key_mailjet] }
   )
  end

  def welcome_email(user)
    @user = user
     mail(from: "thehackingproject.lille@gmail.com", to: user,
          subject: "Bienvenue sur Matouri")
  end

  def user_order(email, cart)
    @email = email
    @cart = cart
    mail(from: "thehackingproject.lille@gmail.com", to: email, subject: "Votre commande")
  end


end
