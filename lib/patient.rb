class Patient 
    attr_reader :name 
    @@all = [ ]
    def initialize(name)
        @name = name 
        Patient.all << self 
    end 

    def self.all
        @@all
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor) 
    end 

    def appointments 
        #returns all appointments associated with this patient 
    end 

    def doctors 
        #has many doctors through appointments 
    end 
end 