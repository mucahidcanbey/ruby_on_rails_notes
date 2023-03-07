=begin

Ruby'de "directories" (dizinler) dosya sistemleri içinde klasörleri ifade etmek için kullanılır.
Dizinler, belirli bir konumda depolanan dosyaları gruplandırmak için kullanılır. 
Örneğin, bir proje klasörü, içinde ilgili dosyaların ve alt klasörlerin bulunduğu bir dizindir.
Ruby'de, dizinlerle çalışmak için Dir sınıfı kullanılır.
Dizinlerle çalışırken, dosya işlemlerinde kullanılan birçok metod Dir sınıfı altında yer alır.

=end

# Bir dizindeki dosyaların sayısını almak için
Dir.entries("/Users/kullanici/Desktop").length

# Bir dizindeki tüm dosyaların listesini almak için
Dir.glob("/Users/kullanici/Desktop/*")

# Belirli bir örüntüye sahip dosyaların listesini almak için
Dir.glob("/Users/kullanici/Desktop/*.txt")

# Bir dizinin var olup olmadığını kontrol etmek için
Dir.exist?("/Users/kullanici/Desktop")

# Bir dizinde belirli bir dosya var mı yok mu kontrol etmek için
Dir.exist?("/Users/kullanici/Desktop/dosya1.txt")
