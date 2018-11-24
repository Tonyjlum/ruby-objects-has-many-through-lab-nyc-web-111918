class Patient
  attr_reader :name, :appointments
  @@all = []

  def initialize(name)
    @name, @appointments = name, []
    @@all << self
  end

  def new_appointment(doctor, date)
    new_app = Appointment.new(self, doctor, date)
    self.appointments << new_app
    new_app
  end

  def doctors
    self.appointments.map { |app| app.doctor }
  end

  def self.all
    @@all
  end
end
