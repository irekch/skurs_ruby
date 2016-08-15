# Modul Wlasny - Ogloszenie
# Ogloszenie sprzedazy motoru plik 10_Modul_ogloszenieMotor.rb

load "10_modul_ogloszenie.rb"

class Gielda
	include Parametry
end

class Motor < Gielda
	attr_accessor :typ, :naped
	
	def rodzaj
		return "Typ motoru: #{@typ}, Naped: #{@naped}"
	end
	def wyswietl
		puts ogloszenie,  rodzaj
	end
end

przedmiot = Motor.new

przedmiot.typ = "turystyczny"
przedmiot.naped = "kardan"
przedmiot.marka = "BMW"
przedmiot.model = "K75"
przedmiot.rocznik = "2004"

puts przedmiot.wyswietl

