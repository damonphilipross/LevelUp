class UsersController < ApplicationController
  def profile
    # authorize current_user
    if current_user.influencer
      # challenges created by influencer
      @challenges = current_user.challenges
    else
      @challenges = current_user.challenge_participations
      # challenges this user is participating in
    end
  end

  def destroy
  end
end
