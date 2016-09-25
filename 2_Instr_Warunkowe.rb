#	 instrukcja IF ELSIF ELSE

#swiatlo = "zielone"

#if swiatlo == "czerwone"
#	puts "STOP" 
#elsif swiatlo == "zielone"
#	puts "RUSZAJ"
#elsif swiatlo == "zolte"
#	puts "UWAGA"
#else
#	puts "Koloru nie ma w palecie. \nMasz 3 kolory do wyboru"
#end

#------------------------------------------
#	instrukcja CASE

#ocena = 8

#case ocena
#	when 1,2
#		puts "kiepsko"
#	when 3,4
#		puts "tak sobie"
#	when 5,6
#		puts "SUPER"
#	else
#		puts "nie ma takich ocen"
#end

#----------------------------------------------
#	petla FOR IN
=begin
for x in (1..3) 	# zakres mozna zapisac 1..5 
	puts "Witaj ! " + x.to_s
	puts "Witaj ! Nr #{x}"
	puts x
end
=end
#----------------------------------------------
#	petla FOR IN w TABLICACH

#for imie in ["ala", "ela", "ola"]
#	puts "Witaj #{imie.capitalize} w kursie Ruby!"
#	puts "-------------------------------"
#end

#---------------------------------------------
#	cwiczenie tabliczka mnozenia w FOR IN

#x =0
#y = 0

#for x in (1..10)
#	for y in (1..10)
#		z = x * y
#		if z <= 9
#			print "|    #{z} |"
#		else
#			print "|  #{z} |"
#		end
#	end
#	print "\n"
#end

#-----------------------------------------------------
#	petla WHILE i  UNTIL

#x = 0

#while x < 5
#	x += 1
#	puts "Witaj uczestniku nr: #{x}"
#end

#puts "\n"

#---------------------------

#x = 0

#until x >= 5
#	x += 1
#	puts "Witaj uczestniku nr: #{x}"
#end

#---------------------------------------------------------
#	petla Loop Do

#x = 0

#loop do
#	break if x >= 7
#		x += 1
#	next if x.between?(3, 5)
#		puts "Witaj uczestniku nr: #{x}"
#puts "Witaj uczestniku nr: " + x.to_s
#end

#----------------------------------------------------------
#	ITERATORY czyli powtorzenia

#	 .times do

#3.times do
#	puts "NO !"
#end

#	 .upto

#1.upto (3) {puts "YES and NO !"}

#5.upto(8) do |numeruj|
#	puts "kolejne liczby: #{numeruj}"
#end

#	.downto

#8.downto(5) do |numeruj|
#	puts "kolejne liczby: #{numeruj}"
#end

#	.each

#imiona = ["ala", "ewa", "ola"]

#imiona.each do |osoba|
#	puts osoba.capitalize
#end

(1..5).each {|x| puts "Yes! " + x.to_s}
