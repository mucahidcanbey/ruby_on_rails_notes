=begin

Polimorfizm, nesne yönelimli programlamada bir nesnenin birden fazla şekilde davranabilme özelliğidir. 
Bu, bir sınıftan türetilen farklı alt sınıfların aynı yöntemi farklı şekillerde uygulayabilmesi anlamına gelir.

Ruby'de, polimorfizm genellikle birden fazla sınıfın aynı yöntemi uyguladığı durumlarda kullanılır. 
Örneğin, bir hayvan sınıfı oluşturduğunuzu ve bu sınıftan türetilen köpek ve kedi sınıflarınız olduğunu varsayalım. 
Her iki sınıf da "sese çıkar" yöntemini uygular, ancak köpek "hav-hav" derken, kedi "miyav" der. 
Bu, köpek ve kedi sınıflarının "sese çıkar" yöntemini polimorfik bir şekilde uygulamasıdır.

=end

class Hayvan
    def ses_cikar
      raise NotImplementedError, "Sınıf alt sınıflar tarafından uygulanmalıdır."
    end
  end
  
  class Kedi < Hayvan
    def ses_cikar
      puts "Miyav!"
    end
  end
  
  class Kopek < Hayvan
    def ses_cikar
      puts "Hav hav!"
    end
  end
  
  kedi = Kedi.new
  kedi.ses_cikar #=> "Miyav!"
  
  kopek = Kopek.new
  kopek.ses_cikar #=> "Hav hav!"




  #-----------------------------------------------------------


  class Meyve
    def tat
      raise NotImplementedError, "Sınıf alt sınıflar tarafından uygulanmalıdır."
    end
  end
  
  class Elma < Meyve
    def tat
      puts "Elma tatlıdır."
    end
  end
  
  class Armut < Meyve
    def tat
      puts "Armut ekşi bir tada sahiptir."
    end
  end
  
  meyve = Meyve.new
  meyve.tat #=> NotImplementedError hatası fırlatılır.
  
  elma = Elma.new
  elma.tat #=> "Elma tatlıdır."
  
  armut = Armut.new
  armut.tat #=> "Armut ekşi bir tada sahiptir."
  
  