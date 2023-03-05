x = 2
# x değişkenine 2 değeri atanır

if x == 0
  puts "A"
  # x değişkeni 0'a eşitse, "A" yazdırılır
elsif x == 1
  puts "B"
  # x değişkeni 1'e eşitse, "B" yazdırılır
else
  puts "C"
  # hiçbir şart sağlanmazsa, "C" yazdırılır
end



if x != 1
  puts "K"
  # x değişkeni 1'e eşit değilse, "K" yazdırılır
end



unless x == 1
  puts "K"
  # x değişkeni 1'e eşit değilse, "K" yazdırılır
end




puts "L" if x == 5
# x değişkeni 5'e eşitse, "L" yazdırılır

puts "M" unless x == 5
# x değişkeni 5'e eşit değilse, "M" yazdırılır


while x == 10
  puts x
  x = x + 1
end
# x değişkeni 10'a eşit olduğu sürece, x değeri yazdırılır ve x değişkenine 1 eklenir




1- if x == 0
    puts "A"
  elsif x == 1
    puts "B"
  else
    puts "C"
  
2- end
  if x != 1
    puts "K"
  end

3- unless x == 1
    puts "K"
  end

4-  puts "L" if x == 5
  puts "M" unless x == 5
  while x == 10
    puts x
    x = x + 1
  end

#------------------------------------------------------------
  print "Yaşınızı girin: "
  yas = gets.chomp.to_i
  
  if yas < 18
    puts "Bu içerik sadece 18 yaşından büyük kullanıcılara yöneliktir."
  else
    puts "Hoş geldiniz!"
  end



#---------------------------------------------------
puan = 75

if puan >= 90
  puts "Harika bir iş çıkardınız!"
  puts "Ödülünüzü alabilirsiniz!"
else
  puts "Daha iyi bir sonuç almak için daha çok çalışmanız gerekiyor."
end



#------------------------------------------------------
puan = 75

if puan >= 90
  puts "Harika bir iş çıkardınız!"
  puts "Ödülünüzü alabilirsiniz!"
elsif puan >= 80
  puts "Çok iyi bir iş çıkardınız."
elsif puan >= 70
  puts "Başarılı bir sonuç elde ettiniz."
else
  puts "Daha iyi bir sonuç almak için daha çok çalışmanız gerekiyor."
end 



#--------------------------------------------------
#Bir koşulun doğru olması durumunda farklı bir değer döndürmek için ternary ifadeleri kullanabilirsiniz:
puan = 85
sonuc = (puan >= 80) ? "Başarılı" : "Başarısız"
puts sonuc


#------------------------------------------
puan = 75
unless puan >= 80
  puts "Başarısız oldunuz."
end




#---------------------------
#Bir koşulun doğru olması durumunda farklı işlemler yapmak için case ifadesini kullanabilirsiniz:
puan = 85

case puan
when 90..100
  puts "Mükemmel bir sonuç elde ettiniz!"
when 80...90
  puts "Çok iyi bir sonuç elde ettiniz."
when 70...80
  puts "Başarılı bir sonuç elde ettiniz."
else
  puts "Daha iyi bir sonuç almak için daha çok çalışmanız gerekiyor."
end


#-------------
sayi = 0

while sayi < 10
  puts sayi
  sayi += 1
end
