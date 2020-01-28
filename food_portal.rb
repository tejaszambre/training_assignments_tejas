class FoodBookingPortal
  @@menu = {"bread" => "10", "butter" => "15"}
  @@available = {"bread" => "5", "butter" => "3"}
  attr_accessor

  def initialize(name, address)
    @name = name
    @address = address
    orderFood
  end

  def orderFood
    takeOrder
    placeOrder
    show_order_status
    generatebill
    payment
    paymentCheck
    return
  end

  def takeOrder
    selectMenu
    selectQuantity
    return
  end

  def selectMenu
    puts "Hello #{@name}, Please enter your dish name: "
    @dish = gets.chomp
    checkMenu
  end

  def checkMenu
    if @@menu[@dish] == nil
      puts "Hello #{@name}, Sorry we dont have #{@dish} in our menu."
      orderRejected
      selectMenu
      return
    end
    return
  end

  def selectQuantity
    puts "Hello #{@name}, enter the number of #{@dish} you want to order: "
    @quantity = gets.chomp
    checkQuantity
    return
  end

  def checkQuantity
    if @@available[@dish].to_i < @quantity.to_i
      puts "Hello #{@name}, Sorry we can provide #{@@available[@dish]} plates of #{@dish} only."
      orderRejected
      selectQuantity
    end
    return
  end

  def placeOrder
    @order_status = "Accepted"
    @@available[@dish] = @@available[@dish].to_i - @quantity.to_i
    return
  end

  def paymentCheck
    if paid? == true
      @order_status = "being prepared"
      show_order_status
      delivered?
    else
      @order_status = "on halt, waiting for payment"
      show_order_status
    end
    return
  end

  def orderRejected
    @order_status = "Rejected, Please order again. "
    show_order_status
    take_order
    return
  end

  private

  def generatebill
    @total = @quantity.to_i * @@menu[@dish].to_i
    puts "Hello #{@name}, your total bill is: #{@total}"
    return
  end

  def payment
    print "Pay the bill(y/n): "
    if gets.chomp == "y"
      @total = 0
      puts "Transaction Successful"
    else
      puts "Transaction Cancelled"
    end
    return
  end

  def paid?
    return @total == 0 ? true : false
  end

  def show_order_status
    puts "Hello #{@name}, your order is #{@order_status}"
    return
  end

  def delivered?
    print "Did you received the order(y/n): "
    gets.chomp == "y" ? (@order_status = "Delivered") : (@order_status = "on its way")
    show_order_status
    return
  end

end

user = FoodBookingPortal.new( "tejas", "abb" )
