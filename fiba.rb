class FibonacciNumber
  
  attr_reader :cache

  def initialize
    @cache = {}
  end  

  def calculate(arg)
    return 0 if arg == 0
    return 1 if arg == 1
    
    result = cache[arg] || (calculate(arg - 1) + calculate(arg - 2))  
    cache[arg] = result unless cache[arg]
    result
  end  

end

puts FibonacciNumber.new.calculate(40)

# One-liner here for whole sequence:
(1..20).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }
