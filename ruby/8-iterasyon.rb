=begin

Ruby'de iterasyon, bir dizi veya koleksiyondaki her öğeyi tek tek işlemek için kullanılan bir programlama kavramıdır. 
İterasyon, bir döngü kullanarak koleksiyonun her öğesine erişmeyi ve her öğe üzerinde işlem yapmayı sağlar. Ruby'de, 
birkaç farklı iterasyon yöntemi vardır. İşte bazı örnekler:

each yöntemi
each yöntemi, bir dizi veya başka bir koleksiyon üzerinde bir döngü yürütür ve her öğeyi sırayla ele alır. 
Bu yöntemi kullanarak, her öğe üzerinde belirli bir işlemi gerçekleştirebilirsiniz.

=end

people = ["Ali", "Ahmet", "Veli"]
people.each do |person|
  puts "Kişi: #{person}"
end
# Kişi: Ali
# Kişi: Ahmet
# Kişi: Veli
people.each_with_index do |person, i|
  puts "Kişi #{i}: #{person}"
end
# Kişi 0: Ali
# Kişi 1: Ahmet
# Kişi 2: Veli



#---------------------------------
#each yöntemi :  her öğe üzerinde belirli bir işlemi gerçekleştirmek için kullanılabilir.
fruits = ["elma", "armut", "üzüm"]

fruits.each do |fruit|
  puts "Benim favori meyvem #{fruit}"
end
#Çıktı
#Benim favori meyvem elma
#Benim favori meyvem armut
#Benim favori meyvem üzüm


#-------------------------------------
#map yöntemi: her öğe için belirli bir işlemi gerçekleştirir ve sonuçları yeni bir diziye yerleştirir.

numbers = [1, 2, 3, 4, 5]

squares = numbers.map do |number|
  number * number
end

puts squares.inspect
#Çıktı
#[1, 4, 9, 16, 25]





#-------------------------------
#select yöntemi, her öğe için belirli bir koşulu kontrol eder ve koşulu sağlayan öğeleri yeni bir diziye yerleştirir.
numbers = [1, 2, 3, 4, 5]

evens = numbers.select do |number|
  number.even?
end

puts evens.inspect
#Çıktı
#[2, 4]


