# Metody

#	Definiowanie i Wywolywanie Metod

#def powitanie
#	osoba = "Adam"
#	napis = "Witaj #{osoba} na kursie Ruby!"
#	puts napis
#end

#	wywolanie/zastosowanie metody

#powitanie

#5.times {powitanie}

#-----------------------------------------------------------
#	Argumenty do metody

#def powitanie (osoba)
#	napis = "Witaj #{osoba} na kursie Ruby!"
#	puts napis
#end

#powitanie ("Adam")
#powitanie ("Ewa")

#	uzycie kilku argumentow

#def powitanie (osoba, lekcja)
#	napis = "Witaj #{osoba} w kursie Ruby, na lekcji nr #{lekcja} !"
#	puts napis
#end

#powitanie("Adam", 1)
#powitanie("Ewa", 10)

#	uzycie argumentow domyslnych

#def powitanie (osoba = "uczniu", lekcja = 1)
#	napis = "Witaj #{osoba} w kursie Ruby, na lekcji nr #{lekcja} !"
#	puts napis
#end

#powitanie()		#przy wywolaniu bez deklaracji uzyte sa argument domyslne
#powitanie("Adam")	#zadeklarowany arg. wiec zostal uzyty, a drugi domyslny
#powitanie("Adam", 2)
#powitanie("Ewa", 10)

#	metoda zwraca ZAWSZE zawartosc ostatniej zmiennej.
#	return - wyswietlenie wart. dowolnej zmiennej z wnetrza metody

def powitanie (osoba = "uczniu", lekcja = 1)
	napis = "Witaj #{osoba} w kursie Ruby, na lekcji nr #{lekcja} !"
	suma = 2*2
	text = "zegnam !"
	return napis, suma, text
end

puts powitanie()		#przy wywolaniu bez deklaracji uzyte sa argument domyslne
puts powitanie("Adam")	#zadeklarowany arg. wiec zostal uzyty, a drugi domyslny
puts powitanie("Adam", 2)
puts powitanie("Ewa", 10)