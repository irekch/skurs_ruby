# Module wlasny do ogloszenie motor i samochod 
#plik 10_modul_ogloszenie.rb

module Parametry
	attr_accessor :marka, :model, :rocznik
	
	def ogloszenie
		return "Sprzedam pilnie: #{@marka} #{@model} #{@rocznik} \n"
	end
end