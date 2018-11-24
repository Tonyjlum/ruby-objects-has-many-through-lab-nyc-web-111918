class Doctor
  attr_reader :name, :appointments
  @@all = []

  def initialize(name)
    @name, @appointments = name, []
    @@all << self
  end

  def new_appointment(patient, date)
    new_app = Appointment.new(patient, self, date)
    self.appointments << new_app
    new_app
  end

  def patients
    self.appointments.map { |app| app.patient }
  end

  def self.all
    @@all
  end
end
