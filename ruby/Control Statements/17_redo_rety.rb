=begin

redo, Ruby'deki bir döngü yapılarından biridir ve döngü içinde bulunan bir bloğun başından 
itibaren yeniden başlatılmasını sağlar.

Örneğin, aşağıdaki örnek döngüde redo kullanarak kullanıcının yanıtını kontrol eder ve yanıt
geçerli olmadığı sürece, kullanıcıya aynı soruyu sorar.

=end

loop do
    puts "Lütfen 'evet' veya 'hayır' cevabını girin:"
    answer = gets.chomp.downcase
  
    if answer == "evet"
      puts "Teşekkürler, cevabınız evet."
      break
    elsif answer == "hayır"
      puts "Teşekkürler, cevabınız hayır."
      break
    else
      puts "Girilen cevap geçerli değil."
      redo
    end
  end
  