class ParticipantsController < ApplicationController

  def create
    new_session = Participant.new
    new_session.challenge = Challenge.find(params[:challenge_id])
    new_session.user = current_user
    new_session.save
    redirect_to users_profile_path
  end
end
