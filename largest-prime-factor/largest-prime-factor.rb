def largest_prime(x)
	prime = x
	(2..Math.sqrt(x).to_i).each do |i|
		break if prime <= i
		prime /= i while (prime > i && prime % i == 0)
	end
	prime
end

s = Time.new
puts largest_prime(600851475143)
puts "elapsed: #{Time.new-s}"
