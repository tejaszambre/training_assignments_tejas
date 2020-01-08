class FoodBookingPortal

	@@menu = {"icecream" => 50, "bread" =>10}
	@@dish_availability = {"icecream" => true, "bread" => true}
	@order_status = "Pending"

	attr_accessor :order_status, :user_name, :dish, :quantity, :total_cost, :total_cost
	
	def initialize(user_name, dish, quatity)
		@user_name = user_name
		@dish = dish
		@quantity = quatity
		order?
	end

	def order?
		if not @@menu[@dish] == nil
			change_order_status("#{@user_name}, your order is Accepted")
		else
			change_order_status("#{@user_name}, your order is Rejected")
		end
	end

	def check_availability
		if @@dish_availability[@dish] == true
			change_order_status("Preparing your dish :)")
			@cost = @@menu[@dish]
			bill
		else
			change_order_status("Sorry #{name}, #{menu} - Currently not available :(")
		end
	end

	def change_order_status(status)
		@order_status = status
	end
	
	def bill
		@total_cost = @quantity * @cost
	end

	def self.menu
	end

end

print "Enter User_name: "
name = gets.chomp

puts

print "Hello #{name}, Enter your Dish name: "
option = gets.chomp

puts 

print "#{name}, Enter quantity: "
quantity = gets.to_i

puts

customer = FoodBookingPortal.new(name,option,quantity)
customer.order?
customer.check_availability
puts customer.order_status

if customer.order_status == "Preparing your dish :)"
	puts "#{customer.user_name}, your total bill is: #{customer.total_cost}"
	puts "#{customer.user_name}, Is your order delivered? (delivered/not_delivered)"
	status = gets.chomp
	if status == "yes" || status == "Yes" || status == "y" || status == "Y"
		customer.change_order_status("#{customer.user_name}, your order is delivered")
	else
		customer.change_order_status("#{customer.user_name}, your order is not delivered")
	end
	puts customer.order_status
end
