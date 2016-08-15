# ------------------Klasy- moje cwiczenia------------------------

class Rowery
	def kola
		@kola = "kola: dwukolowy"
		puts @kola
	end
	def rama
		@rama = "rama: aluminiowa"
		puts @rama
	end
	def przerzutka
		@przerzutka = "przerzutka: Shimano"
		puts @przerzutka
	end
	def pedaly
		@pedaly = "pedaly: zatrzaskowe"
		puts @pedaly
	end
end

class Szosowe < Rowery
	def pedaly
		@pedaly = "pedaly: koszykowe"
		puts @pedaly
	end
end

class MTB < Rowery
	def rama
		@rama = "rama: karbonowa"
		puts @rama
	end
end

class MTBAlu < MTB
	def rama
		@rama = "rama: duraluminium"
		puts @rama
	end
end

puts "Rower szosowy Colinago"
puts "---------------------------"
colinago = Szosowe.new
colinago.kola
colinago.rama
colinago.przerzutka
colinago.pedaly

puts "\nRower MTB Focus"
puts "---------------------------"
focus = MTB.new
focus.kola
focus.rama
focus.przerzutka
focus.pedaly

puts "\nRower MTB Trek"
puts "---------------------------"
trek = MTBAlu.new
trek.kola
trek.rama
trek.przerzutka
trek.pedaly