class Parent   # Parent adlı bir sınıf tanımlanıyor.
    def initialize   # Sınıfın yapıcı metodu (constructor) tanımlanıyor.
      puts "Parent class created"   # "Parent class created" mesajı ekrana yazdırılıyor.
    end   
  end   
    
  class Child < Parent   # Child adlı bir sınıf tanımlanıyor ve bu sınıf, Parent sınıfından kalıtım alıyor.
    def initialize   # Child sınıfının yapıcı metodu tanımlanıyor.
      super   # Parent sınıfının yapıcı metodunu çağırmak için "super" anahtar kelimesi kullanılıyor.
      puts "Child class created"   # "Child class created" mesajı ekrana yazdırılıyor.
    end   
  end   
    
  parent_instance = Parent.new   # Parent sınıfından bir örnek yaratılıyor ve "Parent class created" mesajı ekrana yazdırılıyor.
  child_instance = Child.new   # Child sınıfından bir örnek yaratılıyor ve önce "Parent class created" mesajı, sonra "Child class created" mesajı ekrana yazdırılıyor.
  