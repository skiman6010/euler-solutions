require 'set'

start = Time.now
def factorize(original)
  factors = {}
  factors.default = 0 
  n = original
  i = 2
  sqi = 4
  while sqi <= n do
    while n.modulo(i) == 0 do
      n /= i
      factors[i] += 1
    end
    sqi += 2 * i + 1
    i += 1
  end

  if (n != 1) && (n != original)
    factors[n] += 1
  end
  factors
end

def totient(n)
  n * factorize(n).each_key.map { |p| 1 - 1.0 / p }.reduce(1, :*)
end
finish =Time.now

diff = finish - start

puts (2..1000000).map { |n| [n / totient(n), n] }.max[1]
puts (diff)
