class SalesTaxCalculator
  attr_reader :price, :tax_rate

  def initialize(price, tax_rate)
    @price = validate_input(price, "price")
    @tax_rate = validate_input(tax_rate, "tax rate")
  end

  def tax_amount
    (price * tax_rate / 100).round(2)
  end

  def total_price
    (price + tax_amount).round(2)
  end

  def summary
    puts "Price: $#{'%.2f' % price}"
    puts "Tax Rate: #{'%.2f' % tax_rate}%"
    puts "Tax Amount: $#{'%.2f' % tax_amount}"
    puts "Total Price: $#{'%.2f' % total_price}"
  end

  private

  def validate_input(value, name)
    float_val = Float(value) rescue nil
    if float_val.nil?
      raise ArgumentError, "Invalid #{name}: must be a numeric value"
    elsif float_val < 0
      raise ArgumentError, "Invalid #{name}: cannot be negative"
    elsif float_val.infinite?
      raise ArgumentError, "Invalid #{name}: value is too large"
    end
    float_val
  end
end

begin
  calculator = SalesTaxCalculator.new("100", "8.25")
  calculator.summary
rescue ArgumentError => e
  puts "Error: #{e.message}"
end

# calculator = SalesTaxCalculator.new(-50, 5)     
# calculator = SalesTaxCalculator.new("abc", 10)  
# calculator = SalesTaxCalculator.new(50, nil)    
# calculator = SalesTaxCalculator.new(0, 10)     
# calculator = SalesTaxCalculator.new(100, 0)   

