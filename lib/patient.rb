require 'pry'
class Patient
	@@all = []
	attr_accessor :name
	def initialize (name)
		@nane = name
		Patient.all << self
	end
	def self.all
		@@all
	end
	def appointments
		Appointment.all.select do | appt |
			appt.patient == self
		end
	end
	def doctors
		Doctor.all.select do | doc |
			self.appointments.any? { |appt| appt.doctor == doc }
		end
	end
	def new_appointment(doctor,date)
		Appointment.new(date,self,doctor)
	end
end
