# Ruby'de class'lar istenildiği zaman genişletilebilir. 
# Var olan methodlar override edilebilir, yeni methodlar eklenebilir.

class Integer
    def even?
      (self % 2) == 0
    end
  end
 # 5.even?
 # => false
 # 2.even?
 # => true


 #---------------------------------------------
 # Var olan bir sınıfın metodunu değiştirme:

 class Kedi
    def miyavla
      puts "Miyav"
    end
  end
  
  class Kedi
    def miyavla
      puts "Miyav Miyav"
    end
  end
  
  Kedi.new.miyavla # output: "Miyav Miyav"
  

  #--------------------------------------------
  #Var olan bir sınıfa yeni bir metod ekleme:

  class Araba
    def hiz
      puts "Araba normal hızda ilerliyor."
    end
  end
  
  class Araba
    def fren_yap
      puts "Araba fren yaptı!"
    end
  end
  
  Araba.new.fren_yap # output: "Araba fren yaptı!"

  
#-------------------------------------------------------
# Bir sınıfa birden fazla metod ekleme:  

class Ogrenci
    def sinif_ortalamasi
      puts "Sınıf ortalaması: 85"
    end
  end
  
  class Ogrenci
    def ders_sec
      puts "Lütfen ders seçiniz."
    end
  
    def sinav_sonuclari
      puts "Sınav sonuçları: Matematik (80), Türkçe (90), Fen Bilgisi (85)"
    end
  end
  
  Ogrenci.new.ders_sec # output: "Lütfen ders seçiniz."
  Ogrenci.new.sinav_sonuclari # output: "Sınav sonuçları: Matematik (80), Türkçe (90), Fen Bilgisi (85)"
  