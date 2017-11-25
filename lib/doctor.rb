class Doctor
  attr_accessor :name

  def inititalize(name)
    @name = name
    @appointments = []
  end

  def add_appointment
    appointment = appointment.new
    @appointments = appointment
  end
  
end
