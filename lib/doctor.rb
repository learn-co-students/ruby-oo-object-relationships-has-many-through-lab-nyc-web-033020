class Doctor
	@@all = []
	attr_accessor :name
	def initialize (name)
		@name = name
		Doctor.all << self
	end
	def self.all
		@@all
	end
	def appointments
		Appointment.all.select{|appt| appt.doctor == self}
	end
	def new_appointment(patient,date)
		Appointment.new(date,patient,self)
	end
	def patients
		Patient.all.select do | patient |
			self.appointments.any? {|appt| appt.patient == patient}
		end
	end
end
