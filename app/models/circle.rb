class Circle < ActiveRecord::Base
    attr_accessible :name
    
    # Relationships -------------------------------------------------------------
    belongs_to :owner, :class_name => 'User'
    has_many :users, :through => :memberships
    has_many :memberships, :dependent => :destroy
    has_many :invitations, :dependent => :destroy
    
    # Validations ---------------------------------------------------------------
    validates_presence_of :name
    validates_uniqueness_of :name
    validates_existence_of  :owner, allow_new: true
    
    
    # Callbacks -----------------------------------------------------------------
    before_create :add_owner_to_group
    
    PUBLIC = 'public'
    
    # @return [Fixnum] id of public group, or nil if it does not exist
    #   def self.public_group_id
    # ghetto memoizer
    # key = "#{self.name.underscore}_public_group_id".to_sym
    #Thread.current[key] ||= Group.select(:id).find_by_name(PUBLIC).try(:id)
    #end

private

def add_owner_to_group
    return unless owner_id.present?
    membership = memberships.build
    membership.user_id = owner_id
end

end
