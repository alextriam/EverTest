class InviteMailer < ApplicationMailer
   default from: 'notifications@evertesting.com'

  def invite_email(email, password)
    @url  = root_url
    @email = email
    @password = password
    mail(to: @email, subject: 'EverTesting iтvite')
  end
end
