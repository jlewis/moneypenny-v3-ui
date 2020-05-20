class Team < ApplicationRecord
  
  has_ancestry cache_depth: true
  
  # a team will always belong to a company.
  belongs_to :company, optional: true
  
  # we want projects within a team to be destroyed if a team is deleted
  has_many :projects, dependent: :destroy
  
  def self.arrange_as_array(options={}, hash=nil)                                                                                                                                                            
    hash ||= arrange(options)
    arr = []
    hash.each do |node, children|
      arr << node
      arr += arrange_as_array(options, children) unless children.nil?
    end
    arr
  end

  def name_for_selects
    "#{'-' * depth} #{name}"
  end

  def possible_parents
    parents = Team.arrange_as_array(:order => 'name')
    return new_record? ? parents : parents - subtree
  end
  
end
