class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string = "00:00:00"
  end

  def seconds= num_seconds
    @seconds = num_seconds
    @time_string = ""
    hours = num_seconds / 3600
    if hours < 10
      @time_string += "0"
    end
    @time_string += hours.to_s + ":"
    num_seconds %= 3600
    minutes = num_seconds / 60
    if minutes < 10
      @time_string += "0"
    end
    @time_string += minutes.to_s + ":"
    num_seconds = num_seconds % 60
    if num_seconds < 10
      @time_string += "0"
    end
    @time_string += num_seconds.to_s

  end
  def seconds
    @seconds
  end
  def time_string
    @time_string
  end

end
