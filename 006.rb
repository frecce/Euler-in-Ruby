def euler006(num)
	sum_each = 0
	sum_total = 0

	1.upto(num) do |i|
		sum_each += i ** 2
		sum_total += i
	end
	p (sum_total ** 2) - sum_each
end

euler006(100)
