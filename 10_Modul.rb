# -----------MODULY: wbudowane------------------------------
# w Modulach nie istnieje dziedziczenie

puts Math.sqrt(4)	# Math. to module. sqrt to odwolanie do Metody w Module

puts Math::PI		#odwolanie sie do stalej w module Math

# ------------Zaladowanie modulu do pamieci----------------

include Math
puts sqrt(3)
puts PI

#---------Moduly Wlasne--------------------------------------