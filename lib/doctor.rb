class Doctor

  attr_reader :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.doctor = self

    @patients.push(appointment.patient)

  end

end
