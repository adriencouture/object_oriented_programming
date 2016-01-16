
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

  def read_instructions
    puts "What is your position? (Use x, y values and direction N, W, S, E)"
    answer = gets.chomp
    answer.split("")
    answer = answer.delete(" ")

    input_x = answer[0].to_i
    input_y = answer[1].to_i
    input_direction = answer[2]

    puts "What commands would you like to give your rover? (You can turn (L)Left or (R)Right, and (M)Move)"
    instructions = gets.chomp
    # command = instructions.split ("")
    # command.each do |letter|
    instructions.each_char do |letter| # .each_char replaces the two preceeding lines.
      letter.downcase!
      if letter == "m"
        move(input_x, input_y, input_direction)
      elsif letter == "r" || letter == "l"
        turn(letter)
      else
        puts "Try again!"
      end
    end
  end

# What does x, y mean to my computer?

  def move(x, y, direction)
    if @dir == "n"
      @y += 1
    elsif @dir == "s"
      @y -= 1
    elsif @dir == "w"
      @x -= 1
    else @x += 1
    end

    puts "#{x} #{y} #{direction}"

  end

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

  def turn(dir)
    case @dir
    when "n"
      dir == "l" ? @dir = "w" : @dir = "e"
    when "w"
      dir == "l" ? @dir = "s" : @dir = "n"
    when "s"
      dir == "l" ? @dir = "e" : @dir = "w"
    when "e"
      dir == "l" ? @dir = "n" : @dir = "s"
    end

        # puts "#{x} #{y} #{dir}"

  end



end

# Program begins

puts "What is the size of the plateau?"
plateau = gets.strip.split("")

puts "What is the postion of the rover?"
initial_position = gets.strip.split("")
user_input_x = initial_position[0].to_i
user_input_y = initial_position[2].to_i
user_input_direction = initial_position[4]

puts "Where would you like to go?"
instructions = gets.strip.split("")

rover = Rover.new(user_input_x, user_input_y, user_input_direction)
rover.move

puts "#{rover.x} #{rover.y} #{rover.direction}"

rover.read_instructions

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
