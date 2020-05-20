class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :set_nav_teams
  before_action :set_nav_disciplines
  
  layout Proc.new { |controller| controller.devise_controller? ? 'devise' : 'application' }
  
  protected
    
    def set_nav_teams
      @nav_teams = Team.arrange(:order => :name)
    end
    
    def set_nav_disciplines
      @nav_disciplines = Discipline.all
    end
  
end
