class ChallengesController < ApplicationController
  before_action :set_challenge
  def index
    @challenges = Challenge.all
  end

  def show

  end

  def create
    @challenge = Create.new(challenge_params)
    @challenge.save
    redirect_to challenge_path(@challenge)
  end

  def new
    @challenge = Challenge.new
  end

  def update
    @challenge.update(challenge_params)
  end

  def destroy
    @challenge.destroy
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(
      :detail,
      :start_date,
      :duration,
      :cost,
      :metric_verb,
      :metric_value,
      :metric_frequency,
      :metric_operator,
      :latitude,
      :longitude,
      :location
    )
  end
end
