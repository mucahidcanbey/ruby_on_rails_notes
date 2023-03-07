=begin

Bu modlar, dosya işlemlerinde (file operations) kullanılan "mode" parametreleridir:

"r": Bu mod, yalnızca dosyayı okuma işlemi için açar ve dosyanın başlangıcından itibaren okumaya başlar. 
 Dosya yoksa hata verir.

"r+": Bu mod, hem dosyayı okuma hem de yazma işlemleri için açar ve dosyanın başlangıcından itibaren okumaya başlar. 
 Dosya yoksa hata verir.

"w": Bu mod, dosyayı yazma işlemi için açar. Dosya varsa, dosyayı siler ve yeniden oluşturur. 
 Dosya yoksa, yeni bir dosya oluşturur.

"w+": Bu mod, hem dosyayı okuma hem de yazma işlemleri için açar. Dosya varsa, dosyayı siler ve yeniden oluşturur. 
 Dosya yoksa, yeni bir dosya oluşturur.

"a": Bu mod, dosyayı yazma işlemi için açar. Dosya varsa, dosyanın sonuna yazma işlemi yapar. Dosya yoksa, 
 yeni bir dosya oluşturur.

"a+": Bu mod, hem dosyayı okuma hem de yazma işlemleri için açar. Dosya varsa, dosyanın sonuna yazma işlemi yapar. 
 Dosya yoksa, yeni bir dosya oluşturur.

Ek olarak, herhangi bir modun sonuna "b" eklenerek dosya işlemlerinin ikili (binary) modda yapılması belirtilir. 
Örneğin, "rb" modu dosyayı ikili modda okuma için açar, "wb" modu dosyayı ikili modda yazma işlemi için açar.

=end

# terminal

#Dosyayı açmak için File sınıfını kullanın. Örneğin, "r" modu ile bir dosyayı okumak için aşağıdaki kodu kullanabilirsiniz:
file = File.open("dosya_adi.txt", "r")
content = file.read
puts content
file.close

#"w" modu ile bir dosya oluşturmak veya var olan bir dosyayı yazma modunda açmak için aşağıdaki kodu kullanabilirsiniz:
file = File.open("dosya_adi.txt", "w")
file.write("Merhaba Dünya!")
file.close

#"a" veya "a+" modu ile bir dosyayı açmak ve dosyaya ekleme yapmak için aşağıdaki kodu kullanabilirsiniz
file = File.open("dosya_adi.txt", "a+")
file.write("Bu dosyaya eklenen metin.")
file.close

#"r+" veya "w+" modu ile bir dosyayı hem okuma hem de yazma modunda açmak için aşağıdaki kodu kullanabilirsiniz:
file = File.open("dosya_adi.txt", "r+")
content = file.read
file.write("Yeni bir şeyler eklemek.")
puts content
file.close


#"rb", "wb", "ab", "rb+", "wb+", "ab+" modları, dosyaları ikili modda okuma ve yazma işlemleri için kullanılır. 
#Örneğin, "rb" modu ile bir resim dosyasını okumak için aşağıdaki kodu kullanabilirsiniz:
file = File.open("resim.png", "rb")
content = file.read
file.close




=begin

IO (input/output), Ruby dilinde girdi ve çıktı akışları ile etkileşim sağlamak için kullanılan bir sınıftır. 
IO konsolu, genellikle bir programın standart girdi/çıktı akışını temsil eder. IO sınıfı, 
programların bu standart girdi/çıktı akışlarına erişmesine ve bu akışlar üzerinde işlemler yapmasına olanak 
tanıyan bir dizi metod sağlar.

IO::console
Bu metot, IO konsolu ile ilgili bilgileri döndürür.

IO#raw#raw!
Bu metot, konsolun karakter modunu ayarlar. raw! metodu, konsolun karakter modunu değiştirir ve
 değiştirilmiş ayarları kalıcı hale getirir.

IO#cooked
Bu metot, konsolun "cooked" (pişmiş) karakter moduna geçmesini sağlar. 
Bu modda, kullanıcının girdiği karakterler tamponlanır ve kullanıcının enter tuşuna basması beklenir.

IO#cooked!
Bu metot, cooked modunun aktif olmasını sağlar ve bu modu kalıcı hale getirir.

IO#getch
Bu metot, kullanıcının klavyedeki tuş vuruşlarını okur ve son tuş vuruşunu döndürür.

IO#echo=
Bu metot, konsolun karakterlerin görüntülenmesini sağlayıp sağlamayacağını belirler.

IO#echo?
Bu metot, konsolun karakterlerin görüntülenip görüntülenmediğini döndürür.

IO#noecho
Bu metot, kullanıcının girdiği karakterlerin görüntülenmesini engeller.

IO#winsize
Bu metot, konsol penceresinin boyutunu döndürür.

IO#winsize=
Bu metot, konsol penceresinin boyutunu ayarlar.

IO#iflush
Bu metot, girdi tamponunu temizler.

IO#ioflush
Bu metot, girdi ve çıktı tamponlarını temizler.

IO#oflush
Bu metot, çıktı tamponunu temizler.

=end



# Dosyayı açmak için File.open yöntemi kullanılır:
File.open("example.txt", "r") do |file|
    # dosya işlemleri burada yapılır
  end

  
# IO.foreach yöntemi de dosya okuma işlemi için kullanılabilir:
IO.foreach("example.txt") do |line|
    # satır işlemleri burada yapılır
  end


# Dosya içeriğini tamamen okumak için File.read yöntemi kullanılabilir:
content = File.read("example.txt")


# Dosya var mı yok mu kontrol etmek için File.exist? yöntemi kullanılır:
if File.exist?("example.txt")
    # dosya varsa yapılacak işlemler burada
  else
    # dosya yoksa yapılacak işlemler burada
  end

  
# Hata işleme için begin-rescue blokları kullanılabilir:
begin
    file = File.open("example.txt", "r")
    while line = file.gets
      # satır işlemleri burada yapılır
    end
  rescue Errno::ENOENT => e
    puts "File not found: #{e.message}"
  rescue => e
    puts "Error occurred: #{e.message}"
  ensure
    file.close if file
  end

  
# Dosyanın sonuna kadar okumak için IO#each_line yöntemi kullanılabilir:
ile = File.open("example.txt", "r")
file.each_line do |line|
  # satır işlemleri burada yapılır
end
file.close

#Dosyanın belli bir bölümünü okumak için IO#read yöntemi kullanılabilir:
file = File.open("example.txt", "r")
content = file.read(100) # ilk 100 karakteri oku
file.close


#Dosyaya yazmak için File.write yöntemi kullanılabilir:
File.write("example.txt", "Hello, world!")

# Dosyaya satır satır yazmak için IO#puts yöntemi kullanılabilir:

File.open("example.txt", "w") do |file|
    file.puts "Line 1"
    file.puts "Line 2"
    file.puts "Line 3"
  end
  
