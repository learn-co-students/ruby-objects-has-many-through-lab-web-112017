class Doctor
  attr_accessor :name, :appointments

  def initialize (name)
    @name = name
    @appointments = []
  end

# The Doctor class needs an instance method, #add_appointment, that takes in an instance of the Appointment class and adds that appointment to the doctor's @appointments array. The method should also tell that appointment that it belongs to that doctor.

  def add_appointment (app)
    app.doctor = self
    @appointments << app
  end

  # The Doctor class needs an instance method, #patients, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.

  def patients
    appointments.collect { |appt| appt.patient  }
  end

end
