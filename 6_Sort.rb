# Sort - sortowanie
# <=> operator spaceship daje 0 gdy wartosci sa rowne,
# -1 gdy pierwsza artosc jest mniejsza
# oraz 1 gdy pierwsza wartosc jest wieksza

#oceny = [5, 3, 6, 1, 4, 2]

#puts oceny.sort

#puts "\n"

#puts oceny.sort.reverse

#puts oceny.sort {|pierwsza, druga| pierwsza <=> druga}
# sortowanie rosnace od 1 do 6 tak jak przy .sort

#puts "\n"

#puts oceny.sort {|pierwsza, druga| druga <=> pierwsza}
# sortowanie malejace od 6 do 1 tak jak .sort.reverse

#--------------------------------------
# sortowanie tabeli alfanumeryczne

owoce = ["marchewka", "kiwi", "cytryna"]

puts owoce.sort_by{|owoc| owoc.length}
# sortowanie tabeli wg. dlugosci nazwy

puts owoce.sort{|owoc| owoc.length}
# sortowanie alfabetycznie

