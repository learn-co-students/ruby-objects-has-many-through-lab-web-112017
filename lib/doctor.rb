class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint)
    @appointments << appoint
    appoint.doctor = self
  end

  def patients
    patients = []
    self.appointments.each do |appoint|
      patients << appoint.patient
    end
    patients
  end
end
