=begin

Elbette, Encapsulation (Kapsülleme) bir nesnenin iç yapısını gizleyerek, sadece dışarıya belirli a
rayüzler sunmasını ifade eden bir nesne yönelimli programlama kavramıdır. Ruby dilinde de Encapsulation kullanılabilir.

Ruby'de, bir sınıf içindeki değişken ve metodların erişim seviyelerini kontrol etmek için erişim belirleyicileri kullanılır. 
Ruby'de üç farklı erişim belirleyicisi vardır:

public: Sınıfın herhangi bir yerinden erişilebilir.
protected: Sadece sınıfın kendisi ve alt sınıfları tarafından erişilebilir.
private: Sadece sınıfın kendisi tarafından erişilebilir.

=end

#Aşağıda, Ruby'de Encapsulation kullanarak bir sınıf örneği verilmiştir:

class Ogrenci
    attr_reader :isim # public
    attr_writer :okul_no # public
    attr_accessor :sinif # public
    
    def initialize(isim, okul_no, sinif)
      @isim = isim
      @okul_no = okul_no
      @sinif = sinif
    end
    
    def kayit_bilgisi
      puts "Öğrenci ismi: #{@isim}"
      puts "Öğrenci okul numarası: #{@okul_no}"
      puts "Öğrenci sınıfı: #{@sinif}"
    end
    
    protected # Sadece sınıfın kendisi ve alt sınıfları tarafından erişilebilir.
    
    def kayit_no
      @okul_no
    end
    
    private # Sadece sınıfın kendisi tarafından erişilebilir.
    
    def sinif_degistir(sinif)
      @sinif = sinif
    end
  end
  
  ogrenci1 = Ogrenci.new("Ahmet Yılmaz", 12345, "10A")
  puts ogrenci1.isim
  ogrenci1.okul_no = 54321
  ogrenci1.sinif = "11B" # Bu yöntem çağrısı hata verir, çünkü sinif özelliği private'dır.
  ogrenci1.kayit_bilgisi # Bu yöntem çağrısı hata vermez, çünkü kayit_bilgisi yöntemi public'dir.
  
