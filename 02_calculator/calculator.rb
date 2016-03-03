def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(nums)
  nums.inject(0) { |sum, x| sum + x}
end

def multiply(*nums)
  product = 1
  nums.each {|x| product = product * x}
  product
end

def power(base, exponent)
  total = 1
  exponent.times do
    total *= base
  end
  total
end