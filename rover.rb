
class Rover

  attr_accessor :x, :y, :dir # What about the rover's original position?

  def initialize(x, y, direction)
    @x = x.to_i # A class sets the state, therefore x = 0
    @y = y.to_i # A class sets the state, therefore y = 0
    @dir = direction # Do I have to initialize each directions? (N, W, S, E)?
  end

# The rover must be able to read instructions.
  # def position
  #   puts "What is your position? (Use x, y values and direction N, W, E, S)"
  #   answer = gets.chomp.to_i
  # end

### Why is the program included here? Gut all of this!

  def read_instructions(instructions)
    instructions.each do |letter| # .each_char replaces the two preceeding lines.
      letter.downcase!
      if letter == "m"
        # move(input_x, input_y, input_direction)
        move # Was : (@x, @y, @dir)
      elsif letter == "r" || letter == "l"
        turn(letter) # (@dir) ?
      else
        puts "You must use either of the following values: L, R or M."
      end
    end
  end
    # puts "What is your position? (Use x, y values and direction N, W, S, E)"
    # answer = gets.chomp
    # answer.split("")
    # answer = answer.delete(" ")
    #
    # input_x = answer[0].to_i
    # input_y = answer[1].to_i
    # input_direction = answer[2]
    #
    # puts "What commands would you like to give your rover? (You can turn (L)Left or (R)Right, and (M)Move)"
    # instructions = gets.chomp
    # command = instructions.split ("")
    # command.each do |letter|
###

# puts "What is the size of the plateau?"
# plateau = gets.strip.split("") # This doesn't go anywhere!!!  *******  #
#
# puts "Enter the postion of the rover?"
# initial_position = gets.strip.split("")
# user_input_x = initial_position[0].to_i
# user_input_y = initial_position[2].to_i
# user_input_direction = initial_position[4]
# #
# # rover_one = Rover.new(user_input_x, user_input_y, user_input_direction)
#
# # user_input_x = initial_position[0].to_i
# # user_input_y = initial_position[2].to_i
# # user_input_direction = initial_position[4]
#
# rover_one = Rover.new(user_input_x, user_input_y, user_input_direction)
#
# puts "Where would you like to go?"
# instructions = gets.chomp

###

  #   instructions.each_char do |letter| # .each_char replaces the two preceeding lines.
  #     letter.downcase!
  #     if letter == "m"
  #       # move(input_x, input_y, input_direction)
  #       rover_one.move(user_input_x, user_input_y, user_input_direction) # Was : (@x, @y, @dir)
  #     elsif letter == "r" || letter == "l"
  #       rover_one.turn(letter) # (@dir) ?
  #     else
  #       puts "You must use either of the following values: L, R or M."
  #     end
  #   end
  # end

###

# What does x, y mean to my computer?

  def move
    if @dir == "n"
      @y += 1
    elsif @dir == "s"
      @y -= 1
    elsif @dir == "w"
      @x -= 1
    else @x += 1
    end

    # puts "#{x} #{y} #{direction}"

  end

  ### Keep it simple! (The following is excellent!)

  # def move
  #   case @dir
  #     when "n" then @y += 1
  #     when "s" then @y -= 1
  #     when "e" then @y += 1
  #     when "w" then @x -= 1
  #     end
  # end

  # def turn
  #   if letter == "l" && @dir == "N"
  #     @dir = "W"
  #   elsif letter == "l" && @dir == "W"
  #     @dir = "S"
  #   elsif letter == "l" && @dir == "S"
  #     @dir = "E"
  #   # elsif letter == "l" && @dir == "E"
  #   else
  #     @dir = "N"
  #   end
  #
  #   if letter == "r" && @dir == "N"
  #     @dir = "E"
  #   elsif letter == "r" && @dir == "W"
  #     @dir = "N"
  #   elsif letter == "r" && @dir == "S"
  #     @dir = "W"
  #   # elsif letter == "r" && @dir == "S"
  #   else
  #     @dir = "S"
  #   end
  # end

  # The following Method & Case Statement is much cleaner.

  def turn(dir)
    case @dir # This has to be 'whatever' gets.chomp => case whatever
    when "n"
      dir == "l" ? @dir = "w" : @dir = "e"
    when "w"
      dir == "l" ? @dir = "s" : @dir = "n"
    when "s"
      dir == "l" ? @dir = "e" : @dir = "w"
    when "e"
      dir == "l" ? @dir = "n" : @dir = "s"
    end
        # puts "#{x} #{y} #{dir}" # Would this print out on every turn command?
  end

  def display_position
    puts "#{@x} #{@y} #{@dir}" # Direction does not appear...
  end
end

# Program begins

# rover_one = Rover.new(x, y, direction)
# rover_one = Rover.new(@x, @y, @dir)
#
# rover_one.read_instructions
#
# rover_one.display_position

puts "What is the size of the plateau?"
plateau = gets.strip.split("")

puts "Enter the postion of the rover?"
initial_position = gets.strip.split("")
user_input_x = initial_position[0].to_i
user_input_y = initial_position[2].to_i
user_input_direction = initial_position[4]

puts "Where would you like to go?"
instructions = gets.strip.split("")

rover_one = Rover.new(user_input_x, user_input_y, user_input_direction)

rover_one.read_instructions(instructions)

rover_one.display_position

# puts "Enter the postion of the 2nd rover?"
# initial_position = gets.strip.split("")
# user_input_x = initial_position[0].to_i
# user_input_y = initial_position[2].to_i
# user_input_direction = initial_position[4]
#
# rover_two = Rover.new(user_input_x, user_input_y, user_input_direction)
#
# puts "Where would you like to go?"
# instructions = gets.strip.split("")
# rover_two.read_instructions

# rover.move

# puts "#{rover.x} #{rover.y} #{rover.direction}"


# rover2 = Rover.new

# rover !== rover2

# rover.position

# puts "What commands would you like to give your rover? (You can turn (L)Left or (R)Right, and (M)Move)"
# instructions = gets.chomp


# rover_one.turn
# rover_one.move


# puts "Hey Nasa, rover1 has landed at coordinates (0,0) facing North! Where should I go next?"
# answer = gets.chomp


# command = answer.split("")
