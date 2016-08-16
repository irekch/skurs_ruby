#----------INSTRUKCJE WEJSCIA-------------------------

def powitanie
	system "cls"			# clear screen
	print "Jak masz na imie? \n"
	imie = gets.chomp		# gets wczytuje, a chomp obcina znaki specjalne np \n
	puts imie.capitalize + ", witaj w kursie Ruby!"
end

powitanie