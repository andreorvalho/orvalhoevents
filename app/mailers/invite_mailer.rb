class InviteMailer < ActionMailer::Base
  layout 'invite'

  default from: 'orvalhoevents@gmail.com'

  def invitation(email, number)
    @email = email
    @number = number
    mail(to: @email, subject: 'Welcome to fuego fest')
  end
end
