class Event < ActiveRecord::Base

    attr_accessible :title, :description, :status, :start_time, :end_time

    
    # Relationships -------------------------------------------------------------
    belongs_to :user
    belongs_to :location
    has_many :invitations, :dependent => :destroy
    
    # Validations ---------------------------------------------------------------
    validates_presence_of :title, :status
    
    
    # Callbacks -----------------------------------------------------------------

    def add_to_button

        "http://www.google.com/calendar/event?action=TEMPLATE&text="+"#{title}"+"&dates="+  "#{start_time.to_s[0,4]}" +  "#{start_time.to_s[5,2]}" + "#{start_time.to_s[8,2]}" + "T" +  "#{(start_time+4.hours).to_s[11,2]}" +  "#{start_time.to_s[14,2]}" + "00Z/"+  "#{end_time.to_s[0,4]}" +  "#{end_time.to_s[5,2]}" + "#{end_time.to_s[8,2]}" + "T" +  "#{(end_time+4.hours).to_s[11,2]}" +  "#{end_time.to_s[14,2]}" + "00Z&details=Description&location=Home&trp=false&sprop=&sprop=name:"
    end

    
    #   "http://www.google.com/calendar/event?action=TEMPLATE&text="+ title +"&dates="+
    #   + start_time.to_s(:number) +
    #   "20130416T070000Z/20130416T173000Z&details=Description&location=Home&trp=false&sprop=&sprop=name:"
  #=> "2001-02-03T04:05:06-07:00"
    
    # +  "#{start_time.to_s[0,4]}" +    "#{start_time.to_s[5,2]}" +    "#{start_time.to_s[8,5]}"+  "#{start_time.to_s[14,2]}" +


end
