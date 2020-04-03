class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Patient.all << self
    end

    def appointments
        Appointment.all.select do |appointments|
            appointments.patient == self
        end
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def self.all
       @@all 
    end
end