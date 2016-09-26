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


File.open("test.txt", "r") do |plik|
    plik.each_line{|wiersz| puts wiersz}
end

#--------------------------------------------------------------
# praca ze wskaznikami, czyli kursorem

plik = File.new("test.txt", "r")


