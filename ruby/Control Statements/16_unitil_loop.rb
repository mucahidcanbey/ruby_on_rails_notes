=begin

until döngüsü, belirli bir koşul doğru olmadığı sürece döngüyü çalıştırır.
Koşul yanlış olduğu sürece döngü devam eder.
Özellikle koşulun olumsuz olduğu durumlarda kullanışlıdır.
Diziler, dosyalar, kullanıcı girdileri gibi birçok farklı veri üzerinde işlem yapmak için until döngüsü kullanılabilir.
until döngüsü, koşul doğru olmadığı sürece döngüyü çalıştırdığı için, bazen tercih edilen bir döngü türüdür.
until döngüsü, programcıların koşulun doğru olmadığı sürece yapılacak işlemleri belirlemesine ve programlarının akışını kontrol etmesine yardımcı olur.
Ruby gibi birçok programlama dilinde until döngüsü bulunur ve sıklıkla kullanılır.

=end
rescue => exception
    
end

#Syntax
until conditional  
    code  
 end  


#----------------------------------------------

# Rastgele bir sayı üret
hedef_sayi = rand(1..100)

# Kullanıcının tahmin etmeye çalıştığı sayıyı sıfırla
tahmin = 0

# Tahminler devam ettiği sürece döngüyü tekrarla
until tahmin == hedef_sayi do
  # Kullanıcıdan tahmin iste
  print "Lütfen bir sayı tahmin edin (1-100 arası): "
  tahmin = gets.chomp.to_i

  # Tahmin doğruysa kullanıcıyı tebrik et ve döngüyü sonlandır
  if tahmin == hedef_sayi
    puts "Tebrikler! #{hedef_sayi} sayısını doğru tahmin ettiniz."
    break
  end

  # Tahmin yanlışsa kullanıcıya bir ipucu ver
  if tahmin < hedef_sayi
    puts "Tahmininiz çok düşük. Daha büyük bir sayı deneyin."
  else
    puts "Tahmininiz çok yüksek. Daha küçük bir sayı deneyin."
  end
end


#-----------------------------------------------------------------
i = 1   # i değişkenine 1 değerini atıyoruz

until i == 10   # i değişkeni 10'a eşit olana kadar döngüye giriyoruz
  print i*10, "\n"   # i değişkenini 10 ile çarpıp sonucu ekrana yazdırıyoruz
  i += 1   # i değişkenini 1 arttırıyoruz
end   # döngü sonu
