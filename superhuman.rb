module Power

 def can_fly?
    "can_fly" == @power ? (true) : (false)
  end

  def can_run_speedly?
    "can_run speedly" == @power ? (true) : (false)
  end

  def can_smash?
    "can_smash" == @power ? (true) : (false)
  end

end

class Superhuman

  include Power

  @@superhuman = ["shatiman" => "can_fly","flash" => "can_run speedly","hulk" => "can_smash"]

  def initialize(name,power)
    @name = name
    @power = power
  end

  def check_power
    self.send("#{@power}?") ? (puts "#{@name} #{@power}") : (puts "#{@name} #{@power}") 
  end
end

superhuman1 = Superhuman.new("shaktiman", "can_fly")
superhuman2 = Superhuman.new("hulk", "can_smash")
superhuman1.check_power
superhuman2.check_power

#shaktiman.can_fly? == true ? (puts "Yes can fly") : (puts "No cannot fly")
#shaktiman.can_run_speedly? == true ? (puts "Yes can run speedly") : (puts "No cannot run speedly")
#shaktiman.can_jump? == true ? (puts "Yes can jump") : (puts "No cannot jump")
