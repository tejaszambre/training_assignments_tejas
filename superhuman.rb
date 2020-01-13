module Power

  @@allpower=["fly", "run speedly", "jump"]
  def initialize(power)
    @power = power
  end

  def can_fly?
    "fly" == @power ? (true) : (false)
  end

  def can_run_speedly?
    "run speedly" == @power ? (true) : (false)
  end

  def can_jump?
    "jump" == @power ? (true) : (false)
  end

end

class Superhuman

  include Power
  def self.allpower
    @@allpower
  end

end

puts Superhuman.allpower
puts
print "Select power: "
shaktiman = Superhuman.new(Superhuman.allpower[gets.to_i])
shaktiman.can_fly? == true ? (puts "Yes can fly") : (puts "No cannot fly")
shaktiman.can_run_speedly? == true ? (puts "Yes can run speedly") : (puts "No cannot run speedly")
shaktiman.can_jump? == true ? (puts "Yes can jump") : (puts "No cannot jump")
