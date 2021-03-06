class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    # Display the user's game schedule
    if current_user
      # User is signed in, so get their timeslots
      @timeslots = Timeslot.where(user_id: current_user.id)
      @userSports = PlayerInterestMapping.where(user_id: current_user.id)
      @userInterests = Array.new
      @userSports.each { |userSport| @userInterests.push(userSport.interest)}
      @games = Game.where(interest: @userInterests)
    else
      # User is not signed in
    end 
  
  end
  def form_submission
    redirect_to '/schedule/add'
  end
end
