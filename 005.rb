def euler005(max)
	start = Time.now

	# make max!
	num = 1
	1.upto(max) do |i|
		num *= i
	end

	#pickup factor of max!
	factor = []
	factor = returnFactor(num,max)

	factor_u = factor.uniq

	prd = 1

	factor_u.each do |fac|
		max_factor = 0
		i = 1

		while fac ** i < max do
			max_factor = fac ** i if fac ** i < max
			i += 1
		end
		prd *= max_factor
	end

	p prd

	p ((Time.now)-start)*1000
end

def returnFactor(num,fac)
	factor = []
	max = num
	while num != 1 do
		2.upto(fac) do |i|
			if num % i == 0
				factor.push(i)
				num /= i
				break
			end
		end
	end
	return factor
end

euler005(20)
