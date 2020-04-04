class Appointment 
    attr_reader :date, :patient, :doctor
    @@all = [ ]
    def initialize(date, patient, doctor)
        @patient = patient
        @doctor = doctor  
        @date = date 
        Appointment.all << self 
    end 

    def self.all
        @@all
    end 

    def patient 
        #belongs to a patient 
    end 

    def doctor 
        #belongs to a doctor 
    end 
end 