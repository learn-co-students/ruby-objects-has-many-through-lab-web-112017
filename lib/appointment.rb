class Appointment
  attr_accessor :patient, :doctor




  def initialize(date, doctor_who)
    @date = date
    @doctor = doctor_who
    self.doctor.appointments << self
  end

end
