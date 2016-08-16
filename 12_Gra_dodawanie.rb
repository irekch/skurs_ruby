#-----------------------GRA DODAWANIE------------------------------------
# 0. Szkielet klasy 
# 1. Wyczyścić ekran 
# 2. Powitać gracza i wyświetlić podpowiedzi
# 3. Zainicjować zmienne
# 4. Wylosować pierwszą liczbę 
# 5. Wylosować drugą liczbę 
# 6. Wyświetlić wylosowane liczby użytkownikowi
# 7. Obliczyć sumę wylosowanych liczb (pierwsza + druga)
# 8. Pobrać wynik od użytkownika
# 9. Porównać pobrany wynik od użytkownika z wynikiem wyliczonym
# 10. Wyświetlić komunikat o: sukcesie i porazce
# 11. Zaliczyć punktację użytkownikowi (plus punkt za prawidłowa odpowiedź; minus punkt za złą odpowiedź)
# 12. Powtórzyć losowanie
# 13. Zakończyć grę, jeżeli użytkownik wpisze słowo [koniec]
# 14. Jeżeli gra została zakończona, wyświetlić informację o zdobytej punktacji.

class GraDodawanie
	def initialize
		system "cls"
		@odpowiedz = ""
		@punktacja = 0
		gra		
	end
	
	def gra
		powitanie
		until @odpowiedz == "koniec"
			@a = rand(1..10)
			@b = rand(0...11)	#mozna rand(11) -losuje od 0 do 10 bez 11
			puts ""
			@wynik = @a + @b
			print @imie + ", ile to jest #{@a} + #{@b} = ? "
			@odpowiedz = gets.chomp		#wpisanie "koniec" konczy gre
			
			if @odpowiedz == @wynik.to_s
				puts "\nTwoja odpowiedz: #{@odpowiedz}"
				puts "To jest dobra odpowiedz :)"
				@punktacja += 1
			elsif @odpowiedz == "koniec"
				koniec
			else
				puts "\nTwoja odpowiedz: #{@odpowiedz}"
				puts "To jest zla odpowiedz:("
				@punktacja -= 1
			end
		end
	end
	
	def powitanie
		print "Jak masz na imie? "
		@imie = gets.chomp
		@imie = @imie.capitalize
		puts "************************************************************"
		puts "Witaj #{@imie} w grze w dodawanie!".center(60)
		puts "************************************************************"
		puts "Jesli chcesz zakonczyc gre, wpisz slowo koniec"
	end

	def koniec
		puts "\nDo zobaczenia #{@imie}"
		puts "Twoj wynik to #{@punktacja} pkt"
		puts "nacisnij [enter]"
		gets
	end
end

graj = GraDodawanie.new