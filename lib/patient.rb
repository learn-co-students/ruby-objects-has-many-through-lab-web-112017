class Patient
  attr_accessor :name
  attr_reader :appointments


  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint)
    self.appointments << appoint
    appoint.patient = self
  end

  def doctors
    doctors = []
    self.appointments.each do |appoint|
      doctors << appoint.doctor
    end
    doctors
  end

end
