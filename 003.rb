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

