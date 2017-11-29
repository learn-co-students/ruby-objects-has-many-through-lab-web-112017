class Patient

# A patient is instantiated with a name and an empty `@appointments` array.
  def initialize(name)
    @name = name
    @appointments = []
  end

# an instance method, `#add_appointment`, that takes in an argument of an appointment and adds that appointment to the `@appointments` array. This method should also tell the appointment that it belongs to this patient.
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  # an instance method, `#appointments`, that returns the content of the `@appointments` array.
  def appointments
    @appointments
  end

  # an instance method, `#doctors`, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.
  def doctors
    @appointments.collect do |appt|
      appt.doctor
    end
  end

end
