# -------------Klasy----------------------------------------------
=begin
class Samochod
	def silnik
		puts "silnik turbo"
	end
	def kola
		puts "koła sztuk 4"
	end
end

fiat = Samochod.new

fiat.silnik	#drukuje "silnik turbo"
fiat.kola	#drukuje "kola sztuk 4"
=end
#-------------rodzaje zmiennych-----------------
=begin
osoba	# zmienna lokalna
$osoba	# zmienna globalna
@osoba	# zmienna instancji
@@osoba	# zmienna klasowa
=end
#------------- Zmienne instancji------------------------------------
=begin
class Samochod
	def zapisz_silnik (rodzaj)	#akcesor piszacy
		@typ = rodzaj			#deklaruje zmienna instancji
	end
	def czytaj_silnik			#akcesor czytajacy
		@typ
	end
end

fiat = Samochod.new
fiat.zapisz_silnik("1,2 TDI")
puts fiat.czytaj_silnik

audi = Samochod.new
audi.zapisz_silnik("2,6 Turbo")
puts audi.czytaj_silnik
=end
#------------------Klasy - Akcesory----------------------------------
=begin
class Samochod
	attr_accessor :rodzaj, :paliwo
	
	def silnik
		"silnik typ: #{@rodzaj}, paliwo: #{@paliwo}"	#deklaruje zmienna instancji
	end
end

fiat = Samochod.new
fiat.rodzaj = "1,2 TDI"
fiat.paliwo = "ON"
puts fiat.silnik

audi = Samochod.new
audi.rodzaj = "2,6 Turbo"
audi.paliwo = "95 Pb"
puts audi.silnik
=end
#-----------------Klasy-Inicjalizacja metod---------------------
=begin
class Samochod
	attr_accessor :rodzaj, :paliwo
	def initialize (nadwozie)
		@nadwozie = nadwozie
		@typ = "osobowy"
	end
	def informacje
		"Nadwozie: #{@nadwozie}, typ: #{@typ}\nsilnik: #{@rodzaj}, paliwo: #{@paliwo}"
	end
end

fiat = Samochod.new ("sedan")
fiat.rodzaj = "1,2 TDI"
fiat.paliwo = "ON"
puts fiat.informacje

puts "\n"

audi = Samochod.new ("combi")
audi.rodzaj = "2,6 Turbo"
audi.paliwo = "95Pb"
puts fiat.informacje
=end

#-----------KLASY-Zmienne Klasowe, Metody------------------------
=begin
class Samochod
	attr_accessor :rodzaj, :paliwo
	@@licznik = 0				#deklaracja zmiennej klasowej
	
	def initialize (nadwozie)
		@nadwozie = nadwozie
		@typ = "osobowy"
		@@licznik += 1			#zmienna klasowa zwieksza sie o 1
	end
	
	def self.produkcja			#deklaracja metody dotyczacej calej klasy
		"Produkcja= #{@@licznik}"
	end
	
	def informacje
		"Nadwozie: #{@nadwozie}, typ: #{@typ}\nsilnik: #{@rodzaj}, paliwo: #{@paliwo}"
	end
end

puts"-----------------------------------"
fiat = Samochod.new ("sedan")
fiat.rodzaj = "1,2 TDI"
fiat.paliwo = "ON"
puts fiat.informacje
puts Samochod.produkcja

puts "\n"

audi = Samochod.new ("combi")
audi.rodzaj = "2,6 Turbo"
audi.paliwo = "95Pb"
puts audi.informacje
puts Samochod.produkcja

puts"\n"

ford = Samochod.new ("kabriolet")
ford.rodzaj = "1,8 GTI"
ford.paliwo = "98Pb"
puts ford.informacje
puts Samochod.produkcja

VW = Samochod.new ("buggy")
puts ford.informacje
puts Samochod.produkcja
=end

#--------------------DZIEDZICZENIE-----------------------------------------------
=begin
class Pojazd
	def kola
		@kola = "kola: 4 sztuki"
		puts @kola
	end
end

class Samochod < Pojazd
	def silnik
		"silnik 1,6 TDI"
	end
end

class Motocykl < Pojazd
	def silnik
		"silnik 650 cm3"
	end

	def kola
		@kola = "kola: 2 sztuki"
		puts @kola
	end
end

puts "Samochod Fiat"
fiat = Samochod.new
puts fiat.silnik
puts fiat.kola

puts "Motocykl Honda"
honda = Motocykl.new
puts honda.silnik
puts honda.kola

puts "Samochod Audi"
audi = Samochod.new
puts audi.silnik
puts audi.kola
=end
