class ParticipantMailer < ApplicationMailer
  default from: "Future of Fintech<aipoweredfutureoffintech@tntra.io>"

  def welcome_email
    @participant = params[:participant]
    mail(to: @participant.email, subject: "Registration Confirmed: UAE — AI-Powered Future of Fintech Workshop")
  end
end
