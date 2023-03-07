=begin

Ruby'de Abstraction yani "soyutlama" demek, bir nesnenin veya sistemin kullanıcıları için gereksiz ayrıntıları gizlemesi
 veya kullanıcıların sadece önemli olan bilgileri görmelerine izin vermesidir.

Bir örnek verelim:

Düşün bir otomobil sürdüğünü. Arabayı kullanmak istiyorsun ama nasıl çalıştığını, 
hangi parçaların bir arada çalıştığını veya nasıl üretildiğini bilmek zorunda değilsin. 
Sen sadece arabanın direksiyonuna tutunarak, gaz pedalına basarak ve fren yaparak arabanın hareket etmesini kontrol edebilirsin.

Burada arabanın iç mekanizması sana gösterilmez, çünkü senin için önemli olan sadece aracın hareket ettirilmesi ve kullanımıdır. 
Bu, arabayı kullanan kişinin arabanın soyutlandığı anlamına gelir.

Ruby'de Abstraction, bir nesnenin dış dünyadaki diğer nesneler tarafından sadece kullanılması gereken özelliklerini gösterirken, 
karmaşık veya gereksiz detayları gizlemek anlamına gelir. Bu, daha basit ve kullanıcı dostu bir arayüz sağlar.

Örneğin, bir banka hesabı sınıfını düşün. Bu sınıfta, hesap numarası, bakiye ve işlem geçmişi gibi özelliklerin yanı sıra, 
hesabın nasıl işlediğine dair ayrıntılı bilgileri gizleyebilirsiniz. Bu, müşterilerin hesaplarını daha kolay bir şekilde
 kullanmasına ve banka personelinin müşteri bilgilerine daha rahat erişebilmesine olanak tanır.

Umarım bu açıklama, Ruby'de Abstraction'ın ne olduğunu ve neden önemli olduğunu anlamanıza yardımcı olur.
=end

class BankAccount
    def initialize(account_number, balance)
      # hesap numarası ve bakiye özelliklerini oluştur
      @account_number = account_number
      @balance = balance
      
      # işlem geçmişini tutmak için bir boş dizi oluştur
      @transactions = []
    end
  
    def deposit(amount)
      # hesaba para yatırma işlemini gerçekleştir
      @balance += amount
      
      # işlem geçmişine yatırma işlemini ekle
      @transactions << "Deposited #{amount} dollars"
    end
  
    def withdraw(amount)
      # hesaptan para çekme işlemini gerçekleştir
      if @balance >= amount
        @balance -= amount
        
        # işlem geçmişine para çekme işlemini ekle
        @transactions << "Withdrew #{amount} dollars"
      else
        # yetersiz bakiye nedeniyle işlem başarısız oldu
        @transactions << "Transaction failed due to insufficient funds"
      end
    end
  
    def print_transactions
      # işlem geçmişini görüntüle
      puts "Transaction history for account #{@account_number}:"
      @transactions.each do |transaction|
        puts "- #{transaction}"
      end
    end
  end
  
=begin

@transactions << ifadesi, @transactions adlı diziye yeni bir öğe eklemek için kullanılan bir Ruby sözdizimidir. 
Bu ifade, diziye öğe ekler ve dizinin sonunda yeni bir eleman oluşmasını sağlar.

Örneğin, @transactions << "Deposited #{amount} dollars" ifadesi, @transactions dizisine 
"Deposited {amount} dollars" metnini ekler. #{amount} ifadesi, amount değişkeninin içeriğini metnin içine yerleştirir. 
Yani, eğer amount değişkeni 50 ise, ifade "Deposited 50 dollars" şeklinde olacaktır.

Kısacası, @transactions << ifadesi, bir diziye yeni bir öğe eklemek için kullanılır ve verilen ifadeyi dizinin sonuna ekler.

=end    