# instrukcje boolean

swiatlo = "czerwone"

if swiatlo == "czerwone"
	puts "STOP"
else
	puts "RUSZAJ"
end

puts "\n"

#-----------------------------

x = 0

loop do break if x >= 6
	x += 1
	next if x.between?(3,4)
		puts "Witaj uczestniku nr: #{x}"
end