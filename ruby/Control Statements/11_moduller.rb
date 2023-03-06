=begin

Ruby'de modüller, sınıflar gibi davranan ancak nesne oluşturmak için kullanılamayan yapısal öğelerdir. 
Modüller, birbirleriyle ilgili özelliklerin gruplandırılması için kullanılır ve sınıflara ekstra özellikler 
eklemek veya sınıfları birbirleriyle bağlamak için kullanılabilir. 
Modüller, Ruby'deki çoklu kalıtım mekanizması için de kullanılır.

=end

module Konusabilen
    def konus
      puts "Merhaba, nasılsın?"
    end
  end
  
  class Insan
    include Konusabilen
  end
  
  class Kedi
    include Konusabilen
  end
  
  insan = Insan.new
  insan.konus # Merhaba, nasılsın?
  
  kedi = Kedi.new
  kedi.konus # Merhaba, nasılsın?

#---------------------------------------
#include, Ruby'de bir sınıfın diğer bir sınıfı veya modülü dahil etmesini sağlayan bir özelliğidir.
# Bu özellik sayesinde dahil edilen sınıf veya modülün metodları, 
# sınıfın kendi metotları gibi kullanılabilir hale gelir.

module Renkler
    def kirmizi
      puts "Kırmızı"
    end
  
    def mavi
      puts "Mavi"
    end
  end
  
  module Sayilar
    def bir
      puts "1"
    end
  
    def iki
      puts "2"
    end
  end
  
  class Cember
    include Renkler
    include Sayilar
  end
  
  cember = Cember.new
  cember.kirmizi # Kırmızı
  cember.mavi # Mavi
  cember.bir # 1
  cember.iki # 2
  

# ------------------------------------------------


module Tanitim
    def tanit
      puts "Ben bir hayvanım."
    end
  end
  
  class Kedi
    include Tanitim
  
    def tanit
      puts "Ben bir kediyim."
    end
  end
  
  class Kopek
    include Tanitim
  
    def tanit
      puts "Ben bir köpeğim."
    end
  end
  
  kedi = Kedi.new
  kedi.tanit # Ben bir kediyim.
  
  kopek = Kopek.new
  kopek.tanit # Ben bir köpeğim.
  
  