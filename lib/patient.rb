class Patient

  attr_accessor :name, :appointments

  def initialize (name)
    @name = name
    @appointments = []
  end

  # The Patient class needs an instance method, #add_appointment, that takes in an argument of an appointment and adds that appointment to the @appointments array. This method should also tell the appointment that it belongs to this patient.

  def add_appointment (app)
    app.patient = self
    @appointments << app
  end

  def doctors
    appointments.collect { |appts| appts.doctor  }
  end

end
