# bloki kodu

#(1..5).each {|x| puts "Yes! #{x}"}

#(1..5).each {|x| puts "Yes! " + x.to_s}

#------------------------------------------------------

#["ola", "ewa", "ala"].each {|imie| puts imie.capitalize}

#----------------------------------------------------------

#imiona = ["ola", "ewa", "ala"]

#imiona.each do |imie| 
#	puts "Witaj: #{imie.upcase} w kursie Ruby!"
#end

#----------------------------------------------------------

#	Bloki kodu - Metody

#p (1..10).detect {|szukana| szukana == 0}

#p (1..10).find {|szukana| szukana == 3}

#p (1..10).find {|szukana| szukana < 5} 
#wynik powyzej to 1, bo jest to pierwsza liczba od dolu

#p (1..10).find_all {|szukana| szukana < 5} 
# wynik to [1, 2, 3, 4] czyli wszystkie ponizej 5

#p (1..10).any? {|szukana| szukana < 5}	# odp true

#p (1..10).all? {|szukana| szukana < 5}	# odp. false

#---------------------

oceny = [1, 2, 3, 4, 5, 6, 1, 2, 3]

#p oceny.delete_if {|oceny| oceny <3}

p oceny.select {|oceny| oceny <3}