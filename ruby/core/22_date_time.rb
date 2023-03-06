require 'date'

# Takvim tarihi örneği
puts Date.new(2017,4,3) 
#=> 2017-04-03

# Julian gün numarası örneği
puts Date.jd(2451877) 
#=> 2017-04-03

# Ordinal tarih örneği
puts Date.ordinal(2017,3) 
#=> 2017-01-03

# Hafta tarihi örneği
puts Date.commercial(2017,5,6) 
#=> 2017-02-04

# String'den tarih nesnesi oluşturma örneği
puts Date.parse('2017-02-03')
#=> 2017-02-03

# Biçimlendirilmiş string'den tarih nesnesi oluşturma örneği
puts Date.strptime('03-02-2017', '%d-%m-%Y')
#=> 2017-02-03

# Time nesnesinden tarih nesnesine dönüştürme örneği
puts Time.new(2017,10,8).to_date
#=> 2017-10-08


#-----------------------------------------------------------------

require 'date'

# Tarih nesnesi oluşturma örneği
d = Date.parse('4th Mar 2017')

# Tarih nesnesinin özelliklerini ekrana yazdırma örneği
puts d.year      #=> 2017
puts d.mon       #=> 3
puts d.mday      #=> 4
puts d.wday      #=> 6 (Cumartesi)
puts d += 1      #=> 2017-03-05
puts d.strftime('%a %d %b %Y')  #=> Sun 05 Mar 2017

#-----------------------------------------------------------------

require 'date' 

d = Date.today
puts d.year                       #=> 2023
puts d.mon                        #=> 3
puts d.mday                       #=> 6
puts d.wday                       #=> 1 (Pazartesi)
puts d += 1                       #=> 2023-03-07
puts d.strftime('%a %d %b %Y')   #=> Tue 07 Mar 2023

#------------------------------------------------------------------


require 'date'

# Şu anki tarih ve zamanı alma:
now = DateTime.now
puts "Şu anki tarih ve zaman: #{now.strftime('%d.%m.%Y %H:%M:%S')}"
# Çıktı: Şu anki tarih ve zaman: 06.03.2023 17:45:32

# Belirli bir tarihi oluşturma:
birthday = Date.new(1990, 5, 15)
puts "Doğum tarihi: #{birthday.strftime('%d.%m.%Y')}"
# Çıktı: Doğum tarihi: 15.05.1990

# Bir tarihin gününü alma:
day = birthday.day
puts "Doğum günü: #{day}"
# Çıktı: Doğum günü: 15

# Bir tarihin ayını alma:
month = birthday.month
puts "Doğum ayı: #{month}"
# Çıktı: Doğum ayı: 5

# Bir tarihin yılını alma:
year = birthday.year
puts "Doğum yılı: #{year}"
# Çıktı: Doğum yılı: 1990

# Bir tarihin hangi gün olduğunu alma:
day_name = birthday.strftime('%A')
puts "Doğum günü: #{day_name}"
# Çıktı: Doğum günü: Tuesday


#-----------------------------------------------------------

# Şu anki zamanı almak:
now = Time.now
puts "Şu anki zaman: #{now.strftime('%H:%M:%S')}"
# Çıktı: Şu anki zaman: 17:45:32

# Belirli bir zamanı oluşturmak:
lunchtime = Time.new(2023, 3, 6, 12, 30, 0)
puts "Öğle yemeği saati: #{lunchtime.strftime('%H:%M:%S')}"
# Çıktı: Öğle yemeği saati: 12:30:00

# Bir zamanın saatini alma:
hour = lunchtime.hour
puts "Öğle yemeği saati: #{hour}"
# Çıktı: Öğle yemeği saati: 12

# Bir zamanın dakikasını alma:
minute = lunchtime.min
puts "Öğle yemeği dakikası: #{minute}"
# Çıktı: Öğle yemeği dakikası: 30

# Bir zamanın saniyesini alma:
second = lunchtime.sec
puts "Öğle yemeği saniyesi: #{second}"
# Çıktı: Öğle yemeği saniyesi: 0


