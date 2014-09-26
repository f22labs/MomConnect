class TipDecider
  attr_reader :days
  def initialize(start)
    @days = start
  end

  def moms
    User.where(:conception_timestamp => (Time.now - days).to_i).all
  end
end