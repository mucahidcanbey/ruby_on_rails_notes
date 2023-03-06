sayi = 1   # sayi değişkeni 1 olarak başlatılır.

while sayi <= 5   # sayi değişkeni 5 veya daha küçük olduğu sürece döngü tekrar edilir.
  puts sayi   # sayi değişkeni ekrana yazdırılır.
  sayi += 1   # sayi değişkeni 1 artır


  #------------------------------------------------

  # Kullanıcıdan bir sayı girmesini iste
print "Lütfen bir sayı giriniz: "

# Kullanıcının girdiği sayıyı al ve tamsayıya dönüştür
x = gets.chomp.to_i   

# while döngüsü, x değişkeni sıfır veya daha büyük olduğu sürece çalışır
while x >= 0    
  # x değişkenini ekrana yazdır
  puts x   
  # x değişkenini bir azalt
  x -= 1   
end

#------------------------------------------------------

loop do
    print "Lütfen adınızı girin (çıkış için 'çıkış' yazın): "
    isim = gets.chomp
    break if isim == "çıkış"
    puts "Merhaba #{isim}!"
  end
  puts "Güle güle!"


#--------------------------------------------------------

loop do
    print "Kullanıcı adı: "
    username = gets.chomp
    print "Şifre: "
    password = gets.chomp
  
    if username == "admin" && password == "12345"
      puts "Giriş başarılı."
      break
    else
      puts "Hatalı kullanıcı adı veya şifre, lütfen tekrar deneyin."
    end
  end
      

  