module UserPatch
  def self.included(base)
    base.class_eval do 
      unloadable
      safe_attributes :team_ids
      has_and_belongs_to_many :teams
    end
  end
end
