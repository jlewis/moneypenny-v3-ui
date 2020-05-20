class Project < ApplicationRecord
  
  # a project will always belong to a team.
  belongs_to :team, optional: true
  
end
