# 1. Wyczyścić ekran -> 2. Powitać gracza -> 3. Wyświetlić podpowiedzi
# 4. Zainicjować zmienne -> 5. Uruchomić grę -> 6. Wylosować  przedział
# 7. Wylosować liczbę
# 8. Wyświetlić wylosowany przedział użytkownikowi
# 9. Pobrać wynik od użytkownika
# 10. Porównać pobrany wynik od użytkownika z wynikiem wyliczonym
# 11. Wyświetlić komunikat o: sukcesie i porażce
# 12. Zliczaćkolejne kroki odgadywania
# 13. Zakończyć grę, jeżeli użytkownik wpisze słowo [koniec]
# 14. Zakończyć grę i wyświetlić informację o ilości kroków.
# ----------------------- ZAGRAĆ W GRĘ !!! ------------------------------------

class GraZgadywanka
    def initialize
        system "cls"
        @odpowiedz = ""
        @proba = 1
        gra
    end
    def gra
        powitanie
        @przedzial = rand(1..100)
        @wylosowana = rand(@przedzial)
        puts "\n------------------------------------------------------------"
        puts "odgadnij liczbę z przedziału << 0 do #{@przedzial} >>".center(60)
#        puts @wylosowana
        until @odpowiedz == "koniec"
            puts ""
            print "podaj liczbę >>> "
            @odpowiedz = gets.chomp
            if @odpowiedz.to_i.between?(0,@przedzial)
                if @odpowiedz == "koniec"
                    puts "\npoddałeś się?"
                    puts "szukana liczba to: " + @wylosowana.to_s
                    koniec
                elsif @odpowiedz.to_i > @wylosowana
                    puts "próba nr. #{@proba}. Wynik - ZA DUŻO!!!"
                    @proba += 1
                elsif @odpowiedz.to_i < @wylosowana
                    puts "próba nr. #{@proba}. Wynik - ZA MAŁO !!!"
                    @proba += 1
                else
                    puts "\n**************** BRAWO *********************"
                    puts "zgadłeś za #{@proba} razem"
                    koniec
                end
            else
                puts "\nLiczba spoza zakresu. Spróbuj ponownie >>>"
            end
        end
    end
    def powitanie
        print "Jak masz na imie? "
        @imie = gets.chomp
        @imie = @imie.capitalize
        puts "\n************************************************************"
        puts "Witaj #{@imie} w grze Zgadywanka!".center(60)
        puts "************************************************************"
        puts "Jesli chcesz zakończyc grę, wpisz słowo koniec".center(60)
    end
    def koniec
        puts "\nDo zobaczenia #{@imie}"
        puts "\nnacisnij [enter]"
        gets
        exit
    end
end

graj = GraZgadywanka.new
