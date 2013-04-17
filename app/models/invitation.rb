class Invitation < ActiveRecord::Base

    # Relationships -------------------------------------------------------------
    belongs_to :membership
    belongs_to :event
    
    # Validations ---------------------------------------------------------------
    #validates_presence_of :name
    #validates_uniqueness_of :name
    #validates_existence_of  :owner, allow_new: true
    
    
    # Callbacks -----------------------------------------------------------------
   
    
    
end
