class Doctor
  attr_accessor :name

  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.map do |appt_obj|
      appt_obj.patient
    end
  end

end
