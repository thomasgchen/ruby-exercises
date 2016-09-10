class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = ""
    if @seconds/60 < 1
      return "00:00:" + padded(@seconds)
    elsif @seconds/3600 < 1
      return "00:" + padded(@seconds/60) + ":" + padded(@seconds%60)
    else
      return padded(@seconds/3600) + ":" + padded((@seconds-3600)/60) + ":" + padded(@seconds%60)
    end
  end

  def padded(num)
    if num < 10
      return "0" + num.to_s
    else
      return num.to_s
    end
  end
end
