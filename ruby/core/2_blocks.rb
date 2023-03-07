=begin

Ruby kod blokları, diğer programlama dillerinde kapanış olarak adlandırılır. 
Her zaman parantez içine alınmış veya do..end arasına yazılmış bir grup koddan oluşur . 
Köşeli ayraçlar sözdizimi her zaman do..end sözdiziminden daha yüksek önceliğe sahiptir. 
    Ayraçlar yüksek önceliğe sahiptir ve do düşük önceliğe sahiptir.

Bir blok iki şekilde yazılır,

do ve end arasında çok satırlı (çok satırlı bloklar satır içi değildir)
Parantezler arasında satır içi {}
Her ikisi de aynıdır ve aynı işlevselliğe sahiptir.

Bir bloğu çağırmak için, blokla aynı ada sahip bir işleve sahip olmanız gerekir.

=end

#Syntax
blok_adı{  
    ifade1  
    ifade2  
    ..........  
 }  


 #Aşağıdaki örnek, çok satırlı bloğu göstermektedir.

 [10, 20, 30].each do |n|   
    puts n   
   end   


   #-----------------------------------------------------

#|n| sembolü, Ruby'deki bloklarda kullanılan bir blok parametresidir. 
#Bu sembol, blok tarafından işlenecek herhangi bir girdi değerini temsil eder.

#Örneğin, aşağıdaki örnek kodda, |n| sembolü, bir dizi öğesinin değerini temsil eder:

numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  puts n
end

#--------------------------------------------

people = ["Alice", "Bob", "Charlie"]
people.each do |person|
  puts "Hello, #{person}!"
end
