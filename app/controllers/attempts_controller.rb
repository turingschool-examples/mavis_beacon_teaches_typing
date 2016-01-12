class AttemptsController < ApplicationController
  def new
    @level   = Level.find(params[:level_id])
    @attempt = Attempt.new
  end

  def create
    @level   = Level.find(params[:level_id])
    @attempt = @level.attempts.create(attempt_params)
    redirect_to @level
  end

  def show
    @attempt = Attempt.find(params[:id])
  end

private
  
  def attempt_params
    params.require(:attempt).permit(:text)
  end
end