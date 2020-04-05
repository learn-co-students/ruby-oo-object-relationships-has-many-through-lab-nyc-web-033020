require 'pry'
class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name=name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        #binding.pry
        patients = appointments.map {|appointment| appointment.patient}
    end
end