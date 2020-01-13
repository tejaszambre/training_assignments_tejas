require 'singleton'

class Hangman
  include Singleton
  @@words = ["amazon", "blind" , "confidence", "darkness", "eligible", "feasible", "start", "tension", "traffic", "terminal"]

  def instance
  end

  def start
    @word = @@words.sample
    arr = Array.new(@word.length, " _")
    i = 0
    puts "Start"
    print "            "
    arr.each {|x| print "  #{x}"}
    until i == 6 || (arr.count(" _") == 0)
      print "    : "
      letter = gets.chomp
      puts
      puts
      chars = @word.split('')
      j = 0 
      flag = 0
      chars.each_with_index do |x, index|
        if x == letter
          flag = 1
          arr[index] = " #{letter}"
        end
      end
      i += 1 if flag == 0
      print "            "
      arr.each {|x| print " #{x}"}
    end
    puts
  end
end

obj1 = Hangman.instance
obj1.start
