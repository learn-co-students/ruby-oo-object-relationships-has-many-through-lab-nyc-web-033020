class Appointment
    attr_reader :date
    attr_accessor :patient, :doctor
    @@all = [ ]
  #  @@patients = [ ]
    def initialize(date, patient, doctor)
        @patient = patient
        @doctor = doctor
        @date = date
        Appointment.all << self
      #  @@patients << self.patient
    end

    def self.all
        @@all
    end

    def patient
      #belongs to a patient
      @patient 
    end

    def doctor
        #belongs to a doctor
        @doctor
    end
end
