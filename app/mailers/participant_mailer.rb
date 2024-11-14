class ParticipantMailer < ApplicationMailer
  default from: "aipoweredfutureoffintech@tntra.io"

  def welcome_email
    @participant = params[:participant]
    mail(to: @participant.email, subject: "Welcome to My Awesome Site")
  end
end
