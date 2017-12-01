# class Doctor
# 	attr_accessor :name, :appointments

# 	def initialize(name)
# 		@name = name
# 		@appointments = []
# 	end

# 	def add_appointment(appointment)
# 		@appointments << appointment
# 		appointment.doctor = self
# 	end

# 	def patients
# 		self.appointments.map do |app|
# 			app.patient
# 		end
# 	end

# end

class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment 
    appointment.doctor = self
  end

  def patients
    self.appointments.map do |appointment| 
    	appointment.patient
    end
  end

end 