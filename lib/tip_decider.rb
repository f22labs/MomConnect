class TipDecider
  attr_reader :days
  def initialize(start)
    @days = start
  end

  def moms
    curr_time = Time.now
    User.where(:conception_timestamp => (Time.new(curr_time.year, curr_time.month, curr_time.day) - days.days).to_i).all
  end
end