class TeamsController < ApplicationController
  
  def index
    @team = Team.new
    @teams = Team.all
  end

  def create
    Team.create(params[:team])
    redirect_to :action => :index
  end

  def destroy
    Team.find(params[:id]).destroy
    redirect_to :action => :index
  end

end
