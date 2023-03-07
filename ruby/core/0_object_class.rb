# Kedi sınıfı tanımlama
class Kedi
    # attr_accessor ile ad ve yaş özelliklerine erişmek için setter/getter fonksiyonlarını tanımlama
    attr_accessor :ad, :yas
  
    # Kedi sınıfının constructor'ı
    def initialize(ad, yas)
      # ad ve yaş özelliklerini tanımlama ve initialize yöntemi ile değer atama
      @ad = ad
      @yas = yas
    end
  
    # Kedi'nin adını ve yaşını konsola yazdıran bir yöntem tanımlama
    def bilgi_goster
      puts "Kedinin adı: #{@ad}, Yaşı: #{@yas}"
    end
  
    # Kedi'nin miyavlamasını sağlayan bir yöntem tanımlama
    def miyavla
      puts "#{@ad} miyavladı"
    end
  end
  
  # Kedi sınıfından bir nesne oluşturma
  kedi1 = Kedi.new("Pamuk", 2)
  
  # kedi1'in ad ve yaş özelliklerine erişim
  puts kedi1.ad # "Pamuk"
  puts kedi1.yas # 2
  
  # kedi1'in bilgilerini konsola yazdıran yöntemi çağırma
  kedi1.bilgi_goster # "Kedinin adı: Pamuk, Yaşı: 2"
  
  # kedi1'in miyavlamasını sağlayan yöntemi çağırma
  kedi1.miyavla # "Pamuk miyavladı"


  #----------------------------------------------------------------

  # Araba sınıfını tanımla
class Araba
    # marka, model ve yil özelliklerine erişmek için attr_accessor kullan
    attr_accessor :marka, :model, :yil
  
    # Araba sınıfının constructor'ı
    def initialize(marka, model, yil)
      # marka, model ve yil özelliklerini tanımla ve initialize yöntemi ile değer atama
      @marka = marka
      @model = model
      @yil = yil
    end
  
    # Araba bilgilerini konsola yazdırmak için bir yöntem tanımla
    def bilgileri_goster
      puts "Araba markası: #{@marka}, Modeli: #{@model}, Yılı: #{@yil}"
    end
  end
  
  # Araba sınıfından yeni bir nesne oluştur
  araba = Araba.new("Honda", "Civic", 2022)
  
  # araba nesnesinin marka özelliğini konsola yazdır
  puts araba.marka # "Honda"
  
  # araba nesnesinin bilgilerini konsola yazdır
  araba.bilgileri_goster # "Araba markası: Honda, Modeli: Civic, Yılı: 2022"
  
  