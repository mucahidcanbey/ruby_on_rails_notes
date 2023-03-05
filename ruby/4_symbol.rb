=begin

Semboller, string'e benzer bir veri tipidir.
Stringlere göre daha az memory kullanılır ve daha hızlı çalışır
Genelde Hash içerisinde key olarak kullanılır

=end

key = :name
key.to_s
=> "name"
people = {...}
people[:ahmet]
=> ...
people[:ali]
=> ...



# Symbol sınıfı için kullanılabilecek yöntemler ve örnek kullanımları

# id2name - Sembolün adını döndürür.
sym = :my_symbol
puts sym.id2name # "my_symbol"

# to_s - Sembolün adını döndürür.
sym = :my_symbol
puts sym.to_s # "my_symbol"

# inspect - Sembolün isimlendirilmiş olmasına göre bir string ifade döndürür.
sym = :my_symbol
puts sym.inspect # ":my_symbol"

# == - Diğer sembolün, mevcut sembole eşit olup olmadığını kontrol eder.
sym1 = :my_symbol
sym2 = :my_symbol
puts sym1 == sym2 # true

# <=> - Sembollerin karşılaştırılması için kullanılır.
sym1 = :my_symbol
sym2 = :your_symbol
puts sym1 <=> sym2 # -1

# length - Sembolün adının uzunluğunu döndürür.
sym = :my_symbol
puts sym.length # 9

# size - Sembolün adının uzunluğunu döndürür.
sym = :my_symbol
puts sym.size # 9

# capitalize - Sembolün adının ilk harfini büyük harfe çevirir.
sym = :my_symbol
puts sym.capitalize # :My_symbol

# downcase - Sembolün adını küçük harflere çevirir.
sym = :MY_SYMBOL
puts sym.downcase # :my_symbol

# upcase - Sembolün adını büyük harflere çevirir.
sym = :my_symbol
puts sym.upcase # :MY_SYMBOL






# hash oluştur
person = { name: "John", age: 30, city: "New York" }

# hash anahtarlarına sembol kullanımı
puts person[:name] # John
puts person[:age]  # 30
puts person[:city] # New York



# metod oluştur
def print_info(person)
    puts "Name: #{person[:name]}"
    puts "Age: #{person[:age]}"
    puts "City: #{person[:city]}"
  end
  
  # kişi hash'i
  person = { name: "John", age: 30, city: "New York" }
  
  # metodu çağır
  print_info(person)
  



# sembol dizisi oluştur
colors = [:red, :green, :blue]

# diziyi döngü ile dolaş
colors.each do |color|
  puts "The color is #{color}"
end
