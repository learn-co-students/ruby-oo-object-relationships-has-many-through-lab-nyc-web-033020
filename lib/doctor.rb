#require 'pry'
class Doctor
    attr_reader :name
    @@all = [ ]
    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def appointments
      #binding.pry
        Appointment.all.select {|appointment| appointment.doctor == self} #.map{ |app| app.appointment }
    end


    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    end

    def patients
        #has many patients through appointments
        Appointment.all.select do |appointment|
          appointment.doctor == self
        end.map{|app| app.patient}
    end

end
