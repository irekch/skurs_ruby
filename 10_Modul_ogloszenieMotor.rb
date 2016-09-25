# Modul Wlasny - Ogloszenie
# Ogloszenie sprzedazy motoru w pliku 10_Modul_ogloszenieMotor.rb
# gdzie znajduje sie zarowno module "Parametry", jak i "ogloszenie"

load "10_modul_ogloszenie.rb"

class Gielda
	include Parametry	# module Parametry jest w 10_Modul_ogloszenieMotor.rb
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

