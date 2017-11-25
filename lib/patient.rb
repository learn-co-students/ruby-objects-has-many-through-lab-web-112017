class Patient

  attr_reader :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments.push(appointment)
    @doctors.push(appointment.doctor)
  end


end
