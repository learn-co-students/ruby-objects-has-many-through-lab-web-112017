class Patient

  attr_accessor :name, :appointments

  def initialize(patient_name)
    @name = patient_name
    @appointments = []
  end

  def add_appointment(appointment_object)
    appointment_object.patient = self
    self.appointments << appointment_object  
  end

  def doctors
    self.appointments.collect do |appointment_object|
      appointment_object.doctor
    end
  end

end
