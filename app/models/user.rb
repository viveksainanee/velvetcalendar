class User < ActiveRecord::Base
    
# Devise --------------------------------------------------------------------

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # Mass Assignment -----------------------------------------------------------
    # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
    attr_accessible :first_name, :last_name
    
    # Relationships -------------------------------------------------------------
    has_many :memberships, :dependent => :destroy
    has_many :circles, :through => :memberships, :order => 'name'
    has_many :owned_circles, :dependent => :destroy, :class_name => 'Circle', :foreign_key => 'owner_id'
    has_many :events, :dependent => :destroy
    has_many :invitations, :through => :events
 
    # Validations ---------------------------------------------------------------

    validates_uniqueness_of :email
    
    def confirmation_required?
        Rails.env.production?
    end
    


end
