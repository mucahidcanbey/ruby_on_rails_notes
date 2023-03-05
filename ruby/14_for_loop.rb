# Bir dizi oluştur
fruits = ['apple', 'banana', 'cherry']

# fruits dizisindeki her bir öğe için döngüyü çalıştır
for fruit in fruits do
  # her bir öğe için yazdır
  puts "I love #{fruit}s"
end

#------------------------------------------
#  each

dizi = [1, 2, 3, 4, 5]

toplam = 0

# each metodu, dizi içindeki her bir eleman için belirtilen işlemleri gerçekleştirir
# burada her eleman için, eleman adı verilen değişken oluşturulur ve toplam değişkenine eklenir
dizi.each do |eleman|
  toplam += eleman
end

puts toplam

#-----------------------------------


a = gets.chomp.to_i   # kullanıcıdan bir sayı alınarak a değişkenine atanır
for i in 1..a do     # 1'den a sayısına kadar olan sayılar üzerinde döngü oluşturulur
  puts i             # her döngü adımında i değeri ekrana yazdırılır
end                 


#----------------------------------------


