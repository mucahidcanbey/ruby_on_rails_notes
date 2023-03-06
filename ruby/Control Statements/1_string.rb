# Çift tırnak içinde yazılan string
isim = "Mehmet Ali"

# Tek tırnak içinde yazılan string
mesaj = 'Bu bir mesajdır.'

# String uzunluğu
isim.length #=> 10

# String boş mu?
isim.empty? #=> false

# String içinde kelime arama
isim.include?("Ali") #=> true

# String birleştirme
tam_selamlama = isim + " " + mesaj
puts tam_selamlama #=> Mehmet Ali Bu bir mesajdır.

# String parçalama
kelimeler = tam_selamlama.split(" ")
puts kelimeler #=> ["Mehmet", "Ali", "Bu", "bir", "mesajdır."]

isim.class
=> String

isim.reverse
=> "ilA temheM"
