# Praca z Plikami

=begin
puts require 'D:/Code_Ruby/skurs_ruby/10_modul_oglosznie.rb' # ukosniki Linuxa
puts require 'D:\Code_Ruby\skurs_ruby\10_modul_oglosznie.rb' # ukosniki Windows
=end

#---------------------------------------------------------
# wykorzystanie klasy "File"

# puts File.join("D:", "Code_Ruby", "skurs_ruby", "10_modul_ogloszenie.rb")
# wystartowanie tej komendy spowoduje powstanie sciezki odpowiedniej dla
# danego systemu

=begin
p File.absolute_path(__FILE__)  # pokazuje sciezke do pliku w ktorym jest

p File.dirname(__FILE__)        # pokazuje katalog, w ktorym jest ten plik

p File.expand_path(".")         # pokazuje sciezke obecnego katalogu

p File.expand_path("..")        # pokazuje sciezke do katalogu wyzej

p File.expand_path("../..")     # pokazuje sciezke do katalogu jeszcze wyzej
=end

#-----------------------------------------------------------
# Tworzenie plikow

#plik = File.new("test.txt", "w") # utworzony plik do zapisu "w", do odczytu "r"

#-----------------------------------------------------------
# zapisywanie do pliku

=begin
plik = File.new("test.txt", "w") # utworzony plik do zapisu "w", do odczytu "r"

plik.puts "Ala ma kota"      # zapisywanie do pliku
plik << "A ja nie mam nic! " # dopisuje, ale dalej nie przechodzi do nowej linii
plik.print "Ewa ma psa. "    # komentarz j.w.
plik << "Jan ma rybki. "      # komentarz j.w.
plik.write "Ola ma kanarka. #{"\n"}" # komentarz j.w.
5.times do
    plik.puts "Razem mamy duzo zwierzat!"
end

plik.close
=end

#------------------------------------------------------------
# odczyt z pliku

# odczyt pojedynczych linii

=begin
plik = File.new("test.txt", "r")    # plik do odczytu

p plik.read(3)
p plik.gets.chomp
p plik.gets.chomp

plik.close
=end

#odczyt calej zawartosci przy pomocy petli

=begin
File.open("test.txt", "r") do |plik|
    while wiersz = plik.gets
        puts wiersz.chomp
    end
end
=end

# odczyt przy pomocy iteratorow

=begin
File.open("test.txt", "r") do |plik|
    plik.each_line{|wiersz| puts wiersz}
end
=end

#--------------------------------------------------------------
# poruszanie sie wewnatrz pliku

=begin
plik = File.new("test.txt", "r")

while wiersz = plik.gets
    puts "wiersz no: #{plik.lineno} ,tresc: #{wiersz}"
end

plik.close
=end

#---------------------------------------------------------------
# zmiana nazwy pliku
=begin
plik = File.new("czytaj.txt", "w")
plik.puts "zmiana nazwy"
plik.close

File.rename("czytaj.txt", "czytaj_to.txt")
=end

#----------------------------------------------------------------
# usuwanie pliku

#File.delete("czytaj_to.txt")

#----------------------------------------------------------------
# kopiowanie pliku

require 'fileutils'

FileUtils.cp("test.txt", "Test_copy/test_kopia1.txt")

#----------------------------------------------------------------
# praca z plikami - metody

plik = "test.txt"

# pokazanie, gdzie jest plik
p File.dirname(plik)

# pokazanie sciezki dostepu do pliku
p File.expand_path(plik)

# pokazanie rozszerzenia pliku
p File.extname(plik)

# pokazanie kiedy ktos siegal do pliku
p File.atime(plik)

# pokazanie daty modyfikacji pliku
p File.mtime(plik)

# pokazanie daty zmiany wlasciwosci pliku np. wlasciciela
p File.ctime(plik)