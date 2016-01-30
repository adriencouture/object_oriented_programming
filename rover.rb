
# Now split it into parts!

class Rover

  attr_accessor :x, :y, :dir # What about the rover's original position?

# def initialize(starting_x, starting_y, orientation)

  def initialize(x, y, direction)
    @x = x.to_i # A class sets the state, therefore x = 0
    @y = y.to_i # A class sets the state, therefore y = 0
    @dir = direction.upcase # Do I have to initialize each directions? (N, W, S, E)?
  end

  def display_position
    puts "#{@x} #{@y} #{@dir}"
  end

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

  def move
    case @dir
    when "N"
      @y += 1
    when "S"
      @y -= 1
    when "W"
      @x -= 1
    when "E"
      @x += 1
    end
  end

  ### Keep it simple! (The following is excellent!)

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
    when "N"
      dir == "l" ? @dir = "W" : @dir = "E"
    when "W"
      dir == "l" ? @dir = "S" : @dir = "N"
    when "S"
      dir == "l" ? @dir = "E" : @dir = "W"
    when "E"
      dir == "l" ? @dir = "N" : @dir = "S"
    end
  end

end


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
