class Appointment
  attr_reader :date, :doctor, :patient
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @doctor.add_appointment(self)
  end

  def patient=(patient_name)
    @patient = patient_name
  end

  def doctor=(doctor_name)
    @doctor = doctor_name
  end
end
