def euler007(n)
	# Nth prime number < N ln N + N ln ln N
	limit = n * Math::log(n) + n * Math::log( Math::log(n) )

	num   = [] #array of search list
	prime = [] #array of found prime num

	(limit.ceil).times do |i|
		num.push(i)
	end

	(limit.ceil).times do |i|
		num[i] = 0 if ( i == 1 || i == 0 )

		if num[i] > 0
			cnt = 2
			j   = 0

			while j < limit do
				j = i * cnt
				num[j] = 0
				cnt += 1
			end

			prime.push(num[i])
			puts ("#{prime.size}, #{num[i]}")
		end
		break if prime.size >= n
	end
end

euler007(10001)
