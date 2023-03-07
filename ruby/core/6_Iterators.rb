=begin

Ruby'de yineleyici işlemler için bir dizi yüksek seviye fonksiyon veya yöntem vardır.
Yineleyiciler, bir dizi üzerinde yineleme işlemlerini basitleştirmek için kullanılan özel bir nesne türüdür.
Yineleyiciler, Ruby'deki herhangi bir nesne için kullanılabilir.
Yineleyicilerin kullanımı, döngüleri ve koşullu ifadeleri yazma ihtiyacını ortadan kaldırarak kodu daha okunaklı ve etkili hale getirir.
Bazı yineleyiciler, blok adı verilen bir anonim fonksiyonla birlikte çalışır ve bu da kodun daha modüler ve esnek olmasını sağlar.

=end

#each yöntemi, bir dizi üzerinde yineleme yapar ve her öğe için belirtilen bloğu çağırır.
numbers = [1, 2, 3, 4, 5]

numbers.each do |num|
  puts num
end



#map yöntemi, bir dizi üzerinde yineleme yapar ve her öğe için belirtilen blokun sonucunu bir dizi olarak döndürür.
numbers = [1, 2, 3, 4, 5]

squares = numbers.map do |num|
  num ** 2
end

puts squares.inspect



#select yöntemi, bir dizi üzerinde yineleme yapar ve her öğe için belirtilen blokun doğru veya yanlış 
#döndürdüğü sonuçlardan oluşan bir dizi döndürür.
numbers = [1, 2, 3, 4, 5]

even_numbers = numbers.select do |num|
  num.even?
end

puts even_numbers.inspect



#each_with_index yöntemi, bir dizi üzerinde yineleme yapar ve her öğe için belirtilen bloğu öğenin dizindeki 
#konumuyla birlikte çağırır.
fruits = ["apple", "banana", "orange"]

fruits.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end



#inject yöntemi, bir dizi üzerinde yineleme yapar ve her öğe için belirtilen bloğu uygular. 
#İlk öğe, bloğun ilk argümanıdır ve sonuç değeri, bloğun son argümanıdır. Sonuç, 
#her yineleme için bloğun sonuçlarından biridir.
numbers = [1, 2, 3, 4, 5]

sum = numbers.inject(0) do |result, num|
  result + num
end

puts sum




#times yöntemi, bir tamsayı üzerinde yineleme yapar ve belirtilen bloğu tamsayı kadar kez çağırır.
5.times do |i|
    puts "Hello, #{i + 1}!"
  end
  




