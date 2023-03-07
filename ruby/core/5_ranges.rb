=begin
Ruby'de, range ifadeleri oluşturmak için iki farklı üç nokta ("...") 
ve iki nokta ("..") operatörü kullanılabilir.

İki nokta operatörü ("..") kullanıldığında, başlangıç ve 
bitiş değerleri arasında yer alan tüm değerler aralığa dahil edilir. Örneğin:

=end

range = 1..5
range.include?(3) #=> true


#Üç nokta operatörü ("...") kullanıldığında, bitiş değeri aralığa dahil edilmez. Örneğin:
range = 1...5
range.include?(5) #=> false

#---------------------------------------------------------
range = 1..5
if range.include?(5) && range.include?(3)
  # Eğer 5 ve 3 aralığın içinde ise bu blok çalışır
  puts "Aralık 3 ve 5 tam sayılarını içeriyor"
else
  # Eğer 5 veya 3 aralığın dışında ise bu blok çalışır
  puts "Aralık 3 ve 5 tam sayılarını içermiyor"
end

#-------------------------------------------------------

start_time = Time.new(2023, 3, 1)
end_time = Time.new(2023, 3, 31)
payment_date = Time.new(2023, 3, 15)

if (start_time..end_time).include?(payment_date)
  puts "Ödeme tarihi aralığın içinde"
else
  puts "Ödeme tarihi aralığın dışında"
end

#-------------------------------------------------------

# Range oluşturma
range1 = 1..5 # 1, 2, 3, 4, 5
range2 = 1...5 # 1, 2, 3, 4

# Dizi üzerinde range kullanımı
array = [1, 2, 3, 4, 5]
array[1..3] #=> [2, 3, 4]
array[1...3] #=> [2, 3]

# Karakter dizisi üzerinde range kullanımı
string = "abcdef"
string[1..3] #=> "bcd"
string[1...3] #=> "bc"

# Durum ifadesi ile range kullanımı
grade = 85
case grade
when 90..100
  puts "A"
when 80..89
  puts "B"
when 70..79
  puts "C"
when 60..69
  puts "D"
else
  puts "F"
end
    