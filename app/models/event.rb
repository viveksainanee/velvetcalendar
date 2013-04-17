class Event < ActiveRecord::Base

    attr_accessible :title, :description, :status
    
    # Relationships -------------------------------------------------------------
    belongs_to :user
    belongs_to :location
    has_many :invitations, :dependent => :destroy
    
    # Validations ---------------------------------------------------------------
    validates_presence_of :title, :status
    
    
    # Callbacks -----------------------------------------------------------------

    def add_to_button

        "http://www.google.com/calendar/event?action=TEMPLATE&text="+"#{title}"+"&dates=20130416T070000Z/20130416T173000Z&details=Description&location=Home&trp=false&sprop=&sprop=name:"
    end

    
    #   "http://www.google.com/calendar/event?action=TEMPLATE&text="+ title +"&dates="+
    #   + start_time.to_s(:number) +
    #   "20130416T070000Z/20130416T173000Z&details=Description&location=Home&trp=false&sprop=&sprop=name:"
    
end
