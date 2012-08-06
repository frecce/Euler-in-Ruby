def MakePrime(max)
	prime = []
	2.upto(max) do |n|
		prime.push(n)
	end

	max.times do |i|
		prime.delete_if { |n| (n % prime[i] == 0) && (n != prime[i]) }
		break unless prime[i+1]
		break if prime[i] > (max/2)
	end

	#p prime
	return prime
end

def factrization(num)
	max = num
	while num != 1  do
		2.upto(num) do |i|
			if num % i == 0
				num /= i
				print(i, ", ", num, "\n")
				break
			end
		end
	end
end

factrization(600851475143)

