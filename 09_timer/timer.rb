class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hour = padded(@seconds/3600)
    min = padded(@seconds%3600/60)
    sec = padded(@seconds%3600%60%60)
    hour << ":" << min << ":" << sec
  end

  def padded(n)
    if n < 10
      "0" << n.to_s
    else
      n.to_s
    end
  end
end