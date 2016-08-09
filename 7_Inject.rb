#	Inject - wstrzykniecie do pamieci

#liczby = [1, 2, 3, 4, 10]

#suma = liczby.inject {|pamiec, kol_liczba| pamiec + kol_liczba}

#suma = liczby.inject(100) {|pamiec, kol_liczba| pamiec + kol_liczba}

#puts suma

#-----------------------------------------------------
# Przyklad Silnia  5! = 1*2*3*4*5

#puts (1..5).inject {|pamiec, kolejny| pamiec *= kolejny}

puts (1..5).inject {|pamiec, kolejny| puts pamiec *= kolejny; pamiec}