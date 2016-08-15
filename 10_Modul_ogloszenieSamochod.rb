# Modul Wlasny - Ogloszenie
# Ogloszenie sprzedazy samochodu plik 10_Modul_ogloszenieMotor.rb

#load "10_modul_ogloszenie.rb"
require "./10_modul_ogloszenie.rb"

class Samochod
	include Parametry
end

przedmiot = Samochod.new

przedmiot.marka = "Audi"
przedmiot.model = "A4"
przedmiot.rocznik = "1997"

puts przedmiot.ogloszenie