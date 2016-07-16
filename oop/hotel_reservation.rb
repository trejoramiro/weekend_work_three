# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
puts "TESTING the HotelReservation class..."
puts
reservation = HotelReservation.new({customer_name: "Ramiro", date: "2016-07-16", room_number: "1897"})

puts "Testing Stats..."
puts

# The ability to change a room number even after a reservation has already been created
reservation.room_number = "3489"

if reservation.room_number == "3489"
  puts "PASS!"
else
  puts "FAIL"
end

# The add_a_fridge method

reservation.add_a_fridge

if reservation.amenities == ["fridge"]
  puts "PASS!"
else
  puts "FAIL"
end

# The add_a_crib method

reservation.add_a_crib


if reservation.amenities[1] == "crib"
  puts "PASS!"
else
  puts "FAIL"
end


# The add_a_custom_amenity method

reservation.add_a_custom_amenity("television")

if reservation.amenities[2] == "television"
  puts "PASS!"
else
  puts "FAIL"
end

