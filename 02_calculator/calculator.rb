def add(n,v)
    n.to_i+v.to_i
end

def subtract(n,v)
   n.to_i-v.to_i
end

def sum (array)
array.inject(0, :+)
end

def multiply(n,v)
    n.to_i*v.to_i
end

def power(n,v)
    n.to_i**v.to_i
end

def factorial(n)
(1..n).inject(:*) || 1
end