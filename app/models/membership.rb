class Membership < ActiveRecord::Base
    attr_accessible :circle_id
    
    # Relationships -------------------------------------------------------------
    belongs_to :circle
    belongs_to :user
    has_many :invitations, :dependent => :destroy

    
    # Validations ---------------------------------------------------------------
    validates_presence_of :circle_id, :user_id
    validates_uniqueness_of :user_id,  :scope => :circle_id
    validates_uniqueness_of :circle_id, :scope => :user_id
    validates_existence_of :circle, allow_new: true
    validates_existence_of :user,  allow_new: true

end
