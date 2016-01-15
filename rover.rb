# module Move
#   def move
#   end
#
# module Turn
#   def turn
#   end

class Rover
  # include Move
  # include Turn
attr_accessor :x, :y, :dir

  def initialize(x, y, dir)
    @x = x #.to_i
    @y = y #.to_i
    @dir = dir
  end

  def read_instructions(instructions)
    # command = instructions.split ("")
    # command.each do |letter|
    instructions.each_char do |letter|
      letter.downcase!
      if letter == "m"
        move
      elsif letter == "r" || letter == "l"
        turn(letter)
      else
        puts "Try again!"
      end
    end
  end

  def move
    if @dir == "N"
      @y += 1
    elsif @dir == "S"
      @y -= 1
    elsif @dir == "W"
      @x -= 1
    else @x += 1
    end
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
  end

end

# Program begins

rover = Rover.new(0, 0, "N")
rover.read_instructions("rmlmmr")
# rover_one.turn
# rover_one.move



# puts "Hey Nasa, rover1 has landed at coordinates (0,0) facing North! Where should I go next?"
# answer = gets.chomp


# command = answer.split(" ")
