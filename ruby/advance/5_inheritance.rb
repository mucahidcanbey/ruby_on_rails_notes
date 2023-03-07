#Ruby, Object-Oriented Programming (OOP) dili olarak, nesne tabanlı programlama yaklaşımını destekler. 
#Nesne tabanlı programlama, programlama dünyasındaki birçok konseptten biri olan miras almayı içerir. 
#Ruby'de, miras alma, sınıflar arasında bir "is-a" ilişkisi oluşturarak yapılır. 
#Bu, bir sınıfın bir başka sınıftan türetilerek tüm özelliklerini ve davranışlarını miras aldığı anlamına gelir.


=begin

Diyelim ki bir e-ticaret uygulaması yazıyorsunuz ve farklı ürünler için sınıflar oluşturmanız gerekiyor. 
Tüm ürünlerin belirli özellikleri (adı, fiyatı, açıklaması vb.) vardır, ancak bazı ürünlerin özellikleri diğerlerinden farklıdır.

Bunu aşağıdaki örnekle açıklayalım. Önce tüm ürünlerin ortak özelliklerini tanımlayan bir sınıf oluşturalım:
=end

class Urun
    attr_accessor :adi, :aciklama, :fiyati
  
    def initialize(adi, aciklama, fiyati)
      @adi = adi
      @aciklama = aciklama
      @fiyati = fiyati
    end
  end

  
#Bu sınıf, tüm ürünlerin ortak özelliklerini tutar. Şimdi, bir elektronik ürünler sınıfı oluşturalım:

class ElektronikUrun < Urun
    attr_accessor :markasi, :garanti_suresi
  
    def initialize(adi, aciklama, fiyati, markasi, garanti_suresi)
      super(adi, aciklama, fiyati)
      @markasi = markasi
      @garanti_suresi = garanti_suresi
    end
  
    def ozellikleri_tanit
      puts "#{@adi} adlı ürün, #{@markasi} marka ve #{@garanti_suresi} ay garanti süresiyle geliyor."
    end
  end


#Bu sınıf, ElektronikUrun sınıfı için özel özellikleri (marka ve garanti süresi) tanımlar. 
#Ayrıca ozellikleri_tanit metodu, özellikleri hakkında bilgi verir. Şimdi bir örnek oluşturalım:

laptop = ElektronikUrun.new("Laptop", "Güçlü bir bilgisayar", 5000, "Lenovo", 24)
laptop.ozellikleri_tanit # "Laptop adlı ürün, Lenovo marka ve 24 ay garanti süresiyle geliyor."

#Burada, ElektronikUrun sınıfı, Urun sınıfından türetilmiştir ve Urun sınıfındaki tüm özellikleri miras almıştır. 
#Ayrıca ElektronikUrun sınıfına yeni özellikler eklemişiz ve ozellikleri_tanit metodu, özellikleri hakkında bilgi verir.

  