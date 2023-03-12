class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def login1
      puts "Merhaba #{@name}, senin yaşın #{@age} mi?"
    end

  
  kisi = Person.new("Mucahid", 22)
  kisi.login1
end

Person

#--------------------------------------------------------------

class BankaHesabi
def initialize(hesap_sahibi, baslangic_bakiyesi)
  @hesap_sahibi = hesap_sahibi
  @bakiye = baslangic_bakiyesi
end

def para_yatir(miktar)
  @bakiye += miktar
  puts "#{miktar} TL yatırdınız. Yeni bakiyeniz #{@bakiye} TL."
end

def para_cek(miktar)
  if miktar > @bakiye
    puts "Yetersiz bakiye. Mevcut bakiye #{@bakiye} TL."
  else
    @bakiye -= miktar
    puts "#{miktar} TL çektiniz. Yeni bakiyeniz #{@bakiye} TL."
  end
end
end

hesap = BankaHesabi.new("Ali Yılmaz", 1000)
hesap.para_yatir(500)
hesap.para_cek(2000)

#-----------------------------------------------------------------------------

class Ogrenci
    def initialize(ad, soyad)
      @ad = ad
      @soyad = soyad
    end
  
    def tam_ad
      "#{@ad} #{@soyad}"
    end
  
    def dogum_yili(yas)
      Time.now.year - yas
    end
  end
  
  ogrenci = Ogrenci.new("Ali", "Yılmaz")
  puts "Öğrenci adı: #{ogrenci.tam_ad}"
  puts "Doğum yılı: #{ogrenci.dogum_yili(21)}"
  
