=begin

Ruby'de null değeri nil ile gösterilir.
nil de aslında bir objedir NilClass sınıfından türetilir.   

=end

my_variable = nil
puts my_variable.class
#=> NilClass

# NilClass nesnesi, herhangi bir özellik veya yöntem içermez
puts nil.nil?
#=> true

# Bir nil nesnesi, "false" olarak da kabul edilir
puts !!nil
#=> false

# Nil, bir nesne veya dizgeler için boşluğa denk gelir
puts nil.to_s.empty?
#=> true


def get_first_element(list)
    # Eğer liste tanımsız (nil) veya boşsa, "Liste boş" döndür
    list.nil? || list.empty? ? "Liste boş" : list.first
  end
  
  puts get_first_element(nil) #=> "Liste boş"
  puts get_first_element([])  #=> "Liste boş"
  puts get_first_element([1, 2, 3]) #=> 1
  puts get_first_element("abc") #=> "Liste boş"
  