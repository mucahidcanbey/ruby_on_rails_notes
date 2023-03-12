
#------------ ---------         -------------------------  ----------------------------  -------------


# '\n' metni alt sarıea geçirir.ruby 
print "Hello World\n"
# "Hello World" yazdırır ve sonuna bir satır sonu karakteri ekler.

puts "Hello World"
# "Hello World" yazdırır ve sonuna bir satır sonu karakteri ekler.

p "hello world"
# "hello world" yazdırır ve sonuna bir satır sonu karakteri ekler. Ayrıca, nesnenin tam açıklamasını gösterir.




#----------------   ------------------------   ------------------------    ------------------------------------
# Değişken
 sayı_say = "1, 2, 3, 4, 5,"
 p sayı_say



#----------------- ----------------------- ------------------- ----------------------- -----------------------------

def metot_deneme

   first_name ="mucahid"
   last_name ="canbey"
   puts first_name +" "+last_name 
   puts " Adınız: #{first_name} Soyadınız: #{lat_name}" 
    
end
metot_deneme





#------------------------------- --------------------- ------------------------ ------------------- ------------------


# .length metodu bir stringin karakter sayısını döndürür.
"Hello World".length
# => 11

# .capitalize metodu bir stringin ilk harfini büyük harfe dönüştürür.
"hello world".capitalize
# => "Hello world"

# .reverse metodu bir stringi tersine çevirir.
"Hello World".reverse
# => "dlroW olleH"

# .empty? metodu bir stringin boş olup olmadığını kontrol eder.
"Hello World".empty?
# => false
"".empty?
# => true

# .nil? metodu bir nesnenin nil olup olmadığını kontrol eder.
"Hello World".nil?
# => false
nil.nil?
# => true

# .sub("eski_deger", "yeni_deger") metodu bir string içindeki belirli bir alt diziyi ("eski_deger") 
# yeni bir alt diziyle ("yeni_deger") değiştirir.
first_name = "mehmet"
first_name.sub("mehmet", "ahmet")
# => "ahmet"





# ------------------ ------------------------ ----------------------- ------------------------- --------------------

# Kullanıcıdan adını sormak için ekrana bir mesaj yazdırın.
puts "adınız nedir ?"

# Kullanıcının girdiği adı almak için gets.chomp kullanın.
first_name = gets.chomp

# Kullanıcıdan soyadını sormak için ekrana bir mesaj yazdırın.
puts " merhaba #{first_name} soyadınız nedir ?"

# Kullanıcının girdiği soyadı almak için gets.chomp kullanın.
last_name = gets.chomp

# Kullanıcıya hoşgeldin mesajını göstermek için kullanıcının adını ve soyadını kullanın.
puts "memnun oldum #{first_name} #{last_name} .. "





#-----------------    -------------------------       ------------------------------


# to_f metodu, bir stringi ondalıklı sayıya (float) dönüştürür.
sayi = "3.14"
float_sayi = sayi.to_f
# => 3.14

# to_i metodu, bir stringi tam sayıya (integer) dönüştürür.
sayi = "5"
integer_sayi = sayi.to_i
# => 5

# to_s metodu, bir sayıyı string'e dönüştürür.
sayi = 10
string_sayi = sayi.to_s
# => "10"



 
#----------------------- ----------------- ------------------ ------------------------------


# "x" stringini 20 kez yazdırmak için "*" operatörü kullanılır.
puts "x" * 20

# "rand(2)" ifadesi, 0 veya 1 rastgele sayı üretir. 20 kez rastgele sayı üretmek için "20.times" bloğu kullanılır.
20.times { print rand(2) }

# Kullanıcıdan bir sayı almak için "gets.chomp" kullanılır. Kullanıcının girdiği sayıyı almak ve "-"'den oluşan bir çizgi yazdırmak için "sayiGir.times" bloğu kullanılır.
puts "Lütfen bir sayı girin:"
sayiGir = gets.chomp.to_i
sayiGir.times { print "-" }


