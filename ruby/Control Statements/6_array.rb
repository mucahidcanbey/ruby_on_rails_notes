=begin

Array'lerin boyutu dinamiktir
Array içerisine her tipte objeyi ekleyebilirsiniz

=end

people = ["Ali", "Ahmet", "Veli"]
people[0]
=> "Ali"
people.count
=> 3
random_array = [1, 2.5, true, "foobar"]



# Dizi, köşeli parantezler arasında elemanlar dahil edilerek oluşturulur:
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Bir dizideki indis 0'dan başlar, bu nedenle yukarıdaki dizide a[0] 1'dir.

# Bazı dizi yöntemleri:
arrayname.empty?  # Dizi boş mu?
arrayname.include?(itemname)  # itemname elemanı dizi içinde mi?
arrayname.reverse  # Dizinin elemanlarını tersine çevirir.
arrayname.reverse! # ! işareti dizinin orijinal halini değiştirmek için kullanılır.
arrayname.shuffle  # Dizideki elemanları karıştırır.
arrayname.push(30) # Yeni bir eleman (30) dizinin sonuna ekler.
arrayname << 25   # << işareti de yeni bir eleman (25) dizinin sonuna ekler.
arrayname.unshift("someelement") # "some element" elemanını dizinin başına ekler.
arrayname.pop     # Dizinin son elemanını siler ve 1'i döndürür.
arrayname.uniq    # Dizideki tüm yinelenen elemanları kaldırır ve gösterir (orijinal diziyi değiştirmez).
arrayname.uniq!   # Orijinal dizideki tüm yinelenen elemanları kaldırır.

# Bir aralık:
(0..25).to_a  # 0'dan 25'e kadar olan elemanları içeren bir dizi oluşturur.

(0..99).to_a.shuffle! # 0'dan 99'a kadar olan elemanları rastgele sıralanmış bir dizi oluşturur.

# Bir diziyi döngü kullanarak, her bir elemanın değerini yazdırmak için .each yöntemi kullanılabilir:
y.each { |i| puts i }

# Basit bir açıklama: Dizi y'deki her bir i elemanı için i'nin değerini yazdırır.

# Bir blok kullanarak names adlı bir dizi üzerinde yineleme yapmak için:
names.each do |randomvariablename| # do bloğunu başlatır

puts "Merhaba #{randomvariablename}" # her bir eleman için kodu yürütür

end # do bloğunu sonlandırır

# Adı "names" olan bir dizideki her bir elemanın büyük harfle başlatılması için:
names.each { |randomvariablename| puts "Merhaba #{randomvariablename.capitalize}" }

# Yalnızca bir koşulu karşılayan sayıların hepsini seçmek için "select" yöntemi kullanılabilir:
y.select { |number| number.odd? } # Koşulu karşılayan değeri seçer ve yalnızca bu değeri döndürür.

# Bir dizi olan p'nin elemanlarını birleştirmek için:
p.join

# Bir dizi elemanlarını arasında boşluk olan bir şekilde birleştirmek için:
p.join(" ")

# Bir



# Dizi oluşturma
dizi = [1, 2, 3, 4, 5]

# Dizideki öğeleri ekrana yazdırma
dizi.each do |eleman|
  puts eleman
end


# Dizi oluşturma
dizi = [1, 2, 3, 4, 5]

# Toplam değişkeni tanımlama
toplam = 0

# Dizideki öğeleri toplama
dizi.each do |eleman|
  toplam += eleman
end

puts "Dizideki elemanların toplamı: #{toplam}"


# Dizi oluşturma
dizi = [1, 2, 3, 4, 5]

# Tek sayıları bulma
tek_sayilar = []
dizi.each do |eleman|
  if eleman.odd?
    tek_sayilar.push(eleman)
  end
end

puts "Dizideki tek sayılar: #{tek_sayilar}"


string = "1234"

# stringi integer'a dönüştürme
integer = string.to_i

# stringi float'a dönüştürme
float = string.to_f

# stringi sembole dönüştürme
symbol = string.to_sym

# stringi diziye dönüştürme
array = string.split("")

# dizi elemanlarını integer'a dönüştürme
array.map!(&:to_i)

# dizi elemanlarını hash'e dönüştürme
hash = Hash[array.each_slice(2).to_a]

# hash'i string'e dönüştürme
string = hash.to_s

puts "Integer: #{integer}"
puts "Float: #{float}"
puts "Symbol: #{symbol}"
puts "Array: #{array}"
puts "Hash: #{hash}"
puts "String: #{string}"

