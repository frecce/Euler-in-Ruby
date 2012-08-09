
def euler007(n)
	prime = []
	i = 2

	while prime.size < n do
		prime = checkPrime(prime,i)
		i += 1
		p prime.size if i % 100 == 0
	end
	p prime[-1]
end

def checkPrime(prime_array,num)
	check_flg = 0
	
	if prime_array.size == 0
		prime_array.push(num) # push(2)
	else
		prime_array.each do |prime|
			if num % prime == 0
				check_flg += 1
				break
			end
		end
		prime_array.push(num) if check_flg == 0
	end

	return prime_array
end

euler007(10001)
