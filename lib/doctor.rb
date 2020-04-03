require 'pry'
class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def appointments
        Appointment.all.select do |appointments|
            appointments.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end

    def self.all 
        @@all
    end
end