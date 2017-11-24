
class Doctor

  attr_accessor :appointments, :name
  def initialize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(appt)
    appt.doctor = self
    @appointments << appt

  end

  def patients
    appointments.collect do |appt|
      appt.patient
    end
  end

end
