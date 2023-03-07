=begin

Ruby'de, programın normal akışından sapmaları temsil etmek için "exceptions" adı verilen özel hata nesneleri kullanılır. 
Bir istisna oluştuğunda, programın normal akışı kesilir ve hatayı işleyecek bir kod bloğu aranır.

İstisna durumları, birçok farklı senaryoda kullanılabilir. Örneğin, bir dosya açma işlemi sırasında bir hata oluşabilir 
veya bir dizinin sınırları dışına çıkılabilir. Bu gibi durumlarda, istisna nesneleri oluşturulur ve uygun bir hata 
mesajı ile birlikte atılır.

Ruby'de, istisna durumlarını yakalamak için "begin/rescue/end" blokları kullanılır. Bu bloklar, 
programın normal akışını kesintiye uğratan kodları içerirler ve hata durumlarında ne yapılacağını belirtirler. 
Örneğin, bir dosya açma işlemi sırasında oluşan bir hata için bir "rescue" bloğu, 
hata mesajını gösteren bir bildirim ekranı gösterebilir veya kullanıcıya hatayı düzeltmesi için bir şans verebilir.

=end



# Bu kod, "nonexistent_file.txt" adında bir dosya açmayı dener.
# Eğer dosya mevcut değilse, "rescue" bloğu devreye girer ve hata mesajı ekrana yazdırılır.
# Bu blok, programın devam etmesine izin verir.
begin
    file = File.open("nonexistent_file.txt")
  rescue
    puts "Hata: Dosya açılamadı."
  end
  




=begin

NoMemoryError: Bellek sınırlarının dolduğu ve yeni bir nesne oluşturulamadığı durumlarda ortaya çıkan bir hata sınıfıdır. 
Örneğin, bir program çok fazla bellek tüketiyorsa ve artık yeni nesneler oluşturamıyorsa bu hata fırlatılabilir.

ScriptError: Bir betik dosyası çalıştırılırken meydana gelen hataların genel sınıfıdır. Bu hatalar, sözdizimi hataları, 
yürütme zamanı hataları veya dosya erişim hataları gibi çeşitli nedenlerden kaynaklanabilir.

SecurityError: Bir programın güvenlik duvarını aşmaya veya izin verilmeyen bir işlem yapmaya çalışması durumunda 
fırlatılan bir hata sınıfıdır. Örneğin, bir program bir dosyaya erişmeye çalışırsa ve kullanıcının izni yoksa bu hata oluşabilir.

SignalException: İşletim sistemi veya kullanıcının bir sinyal göndermesi nedeniyle ortaya çıkan bir hata sınıfıdır. 
Örneğin, kullanıcı Ctrl-C tuşlarına bastığında, SIGINT sinyali gönderilir ve program bu hatayı fırlatabilir.

StandardError: Hata sınıflarının çoğunluğunun atasıdır ve birçok yaygın hata durumu için kullanılır. 
Örneğin, ZeroDivisionError, NameError veya ArgumentError gibi hatalar bu sınıfın alt sınıflarıdır.

SystemExit: Programın beklenmedik bir şekilde sonlandırılması durumunda fırlatılan bir hata sınıfıdır. 
Örneğin, kullanıcının programı sonlandırmak için Ctrl-D tuşlarına basması veya bir başka program tarafından 
sonlandırılması gibi durumlarda bu hata fırlatılabilir.

SystemStackError: Bir programın çalışma zamanında yığına çok fazla veri itmesi ve dolayısıyla yığının 
kapasitesinin dolması durumunda ortaya çıkan bir hata sınıfıdır.

Fatal: Bu, herhangi bir hata sınıfının alt sınıfı değildir ve kurtarılması mümkün olmayan ciddi hatalar için kullanılır. 
Örneğin, programın çalıştığı dosyanın kaybolması veya diskteki bir dosyanın bozulması gibi durumlarda bu hata fırlatılabilir.