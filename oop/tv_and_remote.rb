# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV
  attr_accessor :power, :volume, :channel

  def initialize()
    @power = false
    @volume = 80
    @channel = 3
  end

end

class Remote
  attr_accessor :tv

  def initialize(input_tv)
    @tv = input_tv
  end

  def toggle_power
    if @tv.power
        @tv.power = false
    else
      @tv.power = true
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel)
    @tv.channel = channel
  end

end

#Driver code
puts "TESTING the TV class..."
puts

my_tv = TV.new()


if my_tv.power == false
  puts "PASS!"
else
  puts "FALSE"
end

if my_tv.volume == 80
  puts "PASS!"
else
  puts "FALSE"
end

if my_tv.channel == 3
  puts "PASS!"
else
  puts "FALSE"
end


puts "TESTING the Remote class..."
puts

my_remote = Remote.new(my_tv)

if my_remote.tv == my_tv
  puts "PASS!"
else
  puts "FAIL"
end

puts "Stats..."
puts

my_remote.toggle_power

if my_tv.power == true
  puts "PASS!"
else
  puts "FAIL"
end

my_remote.increment_volume

if my_tv.volume == 81
  puts "PASS!"
else
  puts "FAIL"
end

my_remote.decrement_volume

if my_tv.volume == 80
  puts "PASS!"
else
  puts "FAIL"
end

my_remote.set_channel(66)

if my_tv.channel == 66
  puts "PASS!"
else
  puts "FAIL"
end
