module Powers
  
  def can_fly
    if "fly" == $power
      puts "yes can fly"
    else
      puts "no cannot fly"
    end
  end

  def can_run_speedly
    if "run speedly" == $power
      puts "yes can run speedly"
    else
      puts "no cannot run speedly"
    end
  end

  def can_jump
    if "jump" == $power
      puts "yes can jump"
    else
      puts "no cannot jump"
    end
  end

end

class Superhuman

  include Powers

  def initialize(power)
    $power = power
  end

end

$allpower=["fly", "run speedly", "jump"]

puts $allpower
puts

print "Select power: "

shaktiman = Superhuman.new($allpower[gets.to_i])
shaktiman.can_fly
shaktiman.can_run_speedly
shaktiman.can_jump
