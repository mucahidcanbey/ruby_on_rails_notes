# Bir modül tanımlayalım
module Greetings
    def say_hello(name)
      puts "Merhaba, #{name}!"
    end
  
    def say_goodbye(name)
      puts "Görüşmek üzere, #{name}!"
    end
  end
  
  # Bir sınıf tanımlayalım ve modülümüzü dahil edelim
  class Person
    include Greetings
  end
  
  # Şimdi Person sınıfından bir örnek oluşturalım ve modüldeki metotları çağıralım
  person = Person.new
  person.say_hello("Ahmet") #=> "Merhaba, Ahmet!"
  person.say_goodbye("Mehmet") #=> "Görüşmek üzere, Mehmet!"
  

  #---------------------------------------------------------------------------------------

  class Animal
    # Animal sınıfının içinde Behavior modülünü tanımlayalım
    module Behavior
      def sleep
        puts "zzzZZZzzz"
      end
  
      def eat(food)
        puts "Yum! I love #{food}!"
      end
    end
  
    # Behavior modülünü Animal sınıfına dahil edelim
    include Behavior
  end
  
  # Animal sınıfından türetilen Cat sınıfını tanımlayalım
  class Cat < Animal
    # Cat sınıfı için özel bir metot tanımlayalım
    def meow
      puts "Meow!"
    end
  end
  
  # Cat sınıfından bir örnek oluşturalım ve metotları çağıralım
  whiskers = Cat.new
  whiskers.sleep #=> "zzzZZZzzz"
  whiskers.eat("tuna") #=> "Yum! I love tuna!"
  whiskers.meow #=> "Meow!"

  
=begin

include, Ruby dilinde sınıflara modüllerin dahil edilmesi için kullanılan bir anahtar kelimedir. 
include kullanarak bir modülü bir sınıfa dahil ederek, 
o sınıfın örnekleri modülde tanımlanan metodlara sahip olabilirler.

=end

module Greetings
    def say_hello(name)
      puts "Merhaba, #{name}!"
    end
  
    def say_goodbye(name)
      puts "Görüşmek üzere, #{name}!"
    end
  end
  
  class Person
    include Greetings
  end
  