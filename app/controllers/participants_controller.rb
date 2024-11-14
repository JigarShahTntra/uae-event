class ParticipantsController < ApplicationController
  def create
    participant = Participant.new(participant_params)
    if participant.save
      ParticipantMailer.with(participant: participant).welcome_email.deliver_now
      render json: { result: "success", participant: }, message: "You registered successfully."
    else
      render json: participant, message: participant.errors.full_messages
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:firstname, :lastname, :email, :job_title, :company, :phone_number, :in_person, :interested_in_ai)
  end
end
