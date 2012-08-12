def euler010(num)
        try1(num)
        puts
end

def try1(limit)
	num   = []
	prime = []

	1.upto(limit) do |i|
		num.push(i)
	end

	sum = 0
	(num.size-1).times do |i|
		#remove 1 from prime
		num[i] = 0 if (num[i] == 1)

		if num[i] > 0
			2.upto((limit/num[i]).floor) do |j|
				num[num[i]*j-1] = 0
				#p i
				#p j
				#p num
				#puts
			end
			sum += num[i]
		end
	end
	p sum

end

euler010(10)
euler010(2000000)
