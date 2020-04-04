class Doctor
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all 
    end


    def appointments
        Appointment.all.select do |appt|
            appt.doctor
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        Patient.all.select do |patient|
            patient.name
        end
    end
end