def fibonacci(max)
	fib = [1,2]

	i = 2
	sum = 0
	while i < max do
		push = fib[i-1] + fib[i-2]
		break if push >= max
		fib.push(push)

		sum += fib[i] if ( fib[i] % 2 == 0 )

		i += 1
	end

	p sum
end

fibonacci(4000000)
