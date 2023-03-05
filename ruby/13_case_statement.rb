=begin

case ifadesi, bir değerin birçok seçenekten biriyle karşılaştırılmasını sağlayan bir kontrol yapılarından biridir.
case ifadesi, when anahtar kelimesiyle birlikte kullanılır.
when anahtar kelimesi, karşılaştırılacak değeri belirtir ve ardından bir işlem bloğu takip eder.
Eğer karşılaştırılacak değer, when anahtar kelimesiyle belirtilen değere eşitse, o when bloğundaki kod çalıştırılır.
Birden fazla when bloğu kullanılabilir.
else anahtar kelimesi de kullanılabilir. Eğer hiçbir when bloğundaki değerle eşleşmezse, else bloğundaki kod çalıştırılır.
when ve else bloklarındaki kod, bir veya daha fazla satır olabilir.
case ifadesinin sonunda, end anahtar kelimesi kullanılmalıdır

=end


color = "kırmızı"

case color # color değişkeni için case ifadesi başlatılıyor
when "kırmızı" # color değişkeni "kırmızı" olursa bu blok çalıştırılacak
  puts "Araba kırmızı." 
when "mavi" 
  puts "Araba mavi." 
when "yeşil" 
  puts "Araba yeşil."
else # hiçbir duruma uymazsa bu blok çalıştırılacak
  puts "Arabanın rengi bilinmiyor." 
end

#-------------------------------------------------------

age = 18

case age
when 0..2
  puts "Henüz bebeksiniz."
when 3..6
  puts "Çocuksunuz."
when 7..12
  puts "Çocukluktan çıktınız."
when 13..18
  puts "Gençsiniz."
else
  puts "Yetişkin bir bireysiniz."
end
