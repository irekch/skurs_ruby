#	Merge - laczenie tablic

#ala = {"sliwki"=>1, "banany"=>2}
#ewa = {"jablka"=>3, "banany"=>4}

#puts ala.merge(ewa)
# tutaj sliwki sa 1, jablka 3, ale banany 4, czyli z tabeli ola

# klucz = nazwa spornego klucza
# stara = wartosc spornego klucza z tablicy 1
# nowa = wartosc spornego klucza z tablicy 2
# ALE - nazwy moga byc dowolne np. a b c

#puts ala.merge(ewa){|klucz, stara, nowa| nowa}

#puts ala.merge(ewa){|klucz, stara, nowa| stara}

#puts ala.merge(ewa){|klucz, stara, nowa| nowa + stara}

#puts "\n"

#puts ala.merge(ewa){|cos, a, b| a+b}

#--------------------------------------------------------
# przyklad ponizej pokazuje, ze w przypadku powtorzen kilku
# elementow merge obejmie wszystkie powtorzenia

ala = {"sliwki"=>1, "banany"=>2, "cebule"=>3}
ewa = {"jablka"=>3, "banany"=>4, "cebule"=>6}

puts ala.merge(ewa){|klucz, stara, nowa| nowa}

puts ala.merge(ewa){|klucz, stara, nowa| stara}

puts ala.merge(ewa){|klucz, stara, nowa| nowa + stara}

puts "\n"

puts ala.merge(ewa){|klucz, a, b| a+b}
# przyklad uzycia innych nazw, nazwy moga byc dowolne

puts ala.merge(ewa){|klucz_cokolwiek, a, b| (a+b)*2}
#wynik mozna pomnozyc


#puts ala.merge(ewa){|cos, a, b| 123}
# zamast laczyc wartosci z tabel, mozna przypisac liczbe tam,
# gdzie sa powtorzenia, tutaj banany i cebule maja wartosc 123

#puts ala.merge!(ewa){|cos, a, b| (a+b)*2}
# mozna zlaczyc tabele na stale przy pomocy !
