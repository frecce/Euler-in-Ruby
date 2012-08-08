def kaibun()
	max = 0
	100.upto(999) do |i|
		i.upto(999) do |j|
			prd = (i*j).to_s
			check = prd.split("")
			max = check.join("").to_i if check.join("").to_i == check.reverse.join("").to_i && max < check.join("").to_i
		end
	end
	p max
end
kaibun()

