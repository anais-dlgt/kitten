class UserMailer < ApplicationMailer

  def user_mail(user)

   mail(
     to: @user.email,
     delivery_method_options: { api_key: Rails.application.credentials[:public_key_mailjet], secret_key: Rails.application.credentials[:secret_key_mailjet] }
   )
 end



end
