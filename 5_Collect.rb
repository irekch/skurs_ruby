#	COLLECT - Kolekcje

#puts (1..10).collect {|liczba| liczba * 2}

#	na tablicach

#oceny = [1, 2, 3, 4, 5, 6]

#puts oceny.collect {|stopien| stopien +1 if stopien < 6}
# daje od 2 do 6, a bez instrukcji if od 2 do 7

# na tablicach z nazwami

#imiona = ["ela", "ewa", "ala"]

#puts imiona.collect {|ona| ona.upcase}

#	COLLECT a Tablice Asocjacyjne

ceny = {"monitor"=> 100, "myszka"=> 20, "klawiatura"=>30}

puts ceny.collect {|klucz, wartosc| "Towar: #{klucz}, netto: #{wartosc} , brutto: #{wartosc*1.23}"}
