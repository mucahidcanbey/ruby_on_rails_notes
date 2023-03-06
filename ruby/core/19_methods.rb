=begin

Bir yöntemi kullanmak için önce onu tanımlamamız gerekir. 
Ruby yöntemi, def anahtar sözcüğü ve ardından yöntem adı ile tanımlanır . 
Sonunda, yöntemin tanımlandığını belirtmek için end anahtar sözcüğünü kullanmamız gerekir.

=end

#Syntax

def methodName  
    code...  
end  



#--------------------------------------------

def dizi_toplami(dizi)
  toplam = 0
  dizi.each do |sayi|
    toplam += sayi
  end
  return toplam
end

dizi = [1, 2, 3, 4, 5]
puts dizi_toplami(dizi)
