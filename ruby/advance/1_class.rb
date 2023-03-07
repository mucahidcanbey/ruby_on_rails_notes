# Sınıf oluşturmak için class anahtar kelimesini kullanırız. 
# Örneğin, bir "Person" sınıfı oluşturmak istediğimizi varsayalım:

class Person
end


=begin

Bu şekilde bir sınıf oluşturduğumuzda, bir nesne oluşturmadan önce sınıfımıza özellikler ve davranışlar eklememiz gerekiyor.

Özellikler, sınıfın her örneğinde depolanacak olan değişkenlere benzerdir ve "instance variables" olarak adlandırılır. 
Örneğin, bir "Person" sınıfına "name" ve "age" özelliklerini ekleyelim:
=end

class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
  end

  
# Yukarıdaki kod, "initialize" adlı bir özel bir metodu tanımlar. 
# Bu metot, bir nesne oluşturulduğunda otomatik olarak çağrılır ve nesne özelliklerini başlatır.
# Bu örnekte, "name" ve "age" parametreleri kullanılarak "@name" ve "@age" instance variables'ları ayarlanır.



# Sınıfın davranışları, "method" adı verilen işlevler tarafından tanımlanır. 
# Örneğin, bir "Person" sınıfına "introduce" adlı bir metod ekleyelim:

class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
    
    def introduce
      puts "Merhaba, ben #{@name}. #{@age} yaşındayım."
    end
  end
# Bu metod, bir "Person" nesnesinin kendisini tanıtmak için kullanacağı bir metoddur.


#Sınıfımızı tanımladığımıza göre, bir nesne oluşturabilir ve sınıfın özelliklerini ve davranışlarını kullanabiliriz:
person1 = Person.new("Ahmet", 30)
person1.introduce


  