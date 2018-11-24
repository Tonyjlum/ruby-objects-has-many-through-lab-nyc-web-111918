class Appointment
  attr_reader :date, :doctor, :patient
  @@all = []

  def initialize(patient, doctor, date)
    @patient, @doctor, @date = patient, doctor, date
    @@all << self
  end

  def self.all
    @@all
  end
end
