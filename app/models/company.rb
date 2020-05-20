class Company < ApplicationRecord
  
  # we want teams within a company to be destroyed if a company is deleted
  has_many :teams, dependent: :destroy
  
end
