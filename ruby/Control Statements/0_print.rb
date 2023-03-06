
# print, puts ve p, hepsi bir programlama dili olan Ruby'de çıktı vermek için kullanılan fonksiyonlardır. 
# Ancak aralarında bazı farklılıklar vardır.


# print: Bu fonksiyon, belirtilen herhangi bir nesneyi yazdırır ve ardından bir satır atlamaz. 
# Yani, çıktıları aynı satırda birleştirerek yazdırır.

print "Merhaba"
print "Dünya"
#  Çıktı : 
#  MerhabaDünya


# puts: Bu fonksiyon, belirtilen herhangi bir nesneyi yazdırır ve ardından bir satır atlar. 
# Yani, çıktıları farklı satırlarda yazdırır.

puts "Merhaba"
puts "Dünya"
#  Çıktı :
#  Merhaba
#  Dünya


# p: Bu fonksiyon, belirtilen nesneyi "güvenli" bir şekilde yazdırır ve onun nasıl göründüğünü gösterir.
# Bu nedenle, p fonksiyonu, özellikle hata ayıklama veya deneme amaçlı olarak kullanışlıdır.

a = [1, 2, 3]
p a
#  Çıktı :
#  [1, 2, 3]

 
# "def" anahtar kelimesi, bir metot tanımlamak için kullanılır. 
def deneme (isim)
    puts "Metot içi #{isim}!"
end
deneme("muco")

=begin
yorum
satırı
çoklu
satır
=end



