class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date_string, doctor_name)
    @date = date_string
    @doctor = doctor_name
    self.doctor.add_appointment(self)
  end

end
