module UserPatch
  def self.included(base)
    base.class_eval do 
      unloadable
      has_and_belongs_to_many :teams
    end
  end
end
