class Appointment
  @@all = []
  attr_reader :doctor, :date, :patient
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patient

  end


end
