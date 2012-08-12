def euler009(sum)
        try1(sum)
        puts
end

def try1(sum)
	1.upto(sum-2) do |i|
		(i+1).upto(sum-1) do |j|
			(j+1).upto(sum-i-j) do |k|
				if (i + j + k) > sum
					break
				end
				if (i + j + k) < (sum-50)
					break
				end
				if (i*i + j*j == k*k && i+j+k == 1000)
					print("i=",i, " j=", j, " k=", k, " i+j+k=", i+j+k, "\n")
					p i*j*k
					break
				end
			end
		end
	end
end

euler009(1000)
