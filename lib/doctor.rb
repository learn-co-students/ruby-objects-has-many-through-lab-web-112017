class Doctor

  attr_accessor :name, :appointments

  def initialize(doctor_name)
    @name = doctor_name
    @appointments = []
  end

  def add_appointment(appointment_object)
    self.appointments << appointment_object
    appointment_object.doctor = self
  end

  def patients
    self.appointments.collect do |appointment_object|
      appointment_object.patient
    end
  end

end
