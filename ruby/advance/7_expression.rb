=begin

Ruby, düzenli ifadeler (regular expressions) için güçlü bir destek sunar. 
Düzenli ifadeler, belirli bir metin desenini tanımlayan bir karakter dizisi veya kalıp olarak tanımlanabilir. 
Bir metin deseni, belirli bir metinde aranabilecek bir desendir. Düzenli ifadeler genellikle metin arama, 
değiştirme ve sınırlandırma işlemlerinde kullanılır.

Ruby'de düzenli ifadeler iki farklı şekilde oluşturulabilir: / karakterleri arasına yazarak veya Regexp.new() fonksiyonunu 
kullanarak. İşte birkaç örnek:
=end

# / karakterleri arasında yazarak
text = "Merhaba Dünya"
if /Dünya/ =~ text
  puts "Dünya kelimesi metinde var."
end

# Regexp.new() fonksiyonunu kullanarak
text = "12345"
regex = Regexp.new("^[0-9]+$")
if regex =~ text
  puts "Metin yalnızca sayılardan oluşuyor."
end



Syntax:

/search string/  

#/search string/ bir düzenli ifadedir ve bir metin içindeki "search string" kelime veya desenini aramak için kullanılır. 
#/ karakterleri arasında yazılan herhangi bir kelime veya karakter dizisi düzenli bir ifade olarak kabul edilir. 
#Bu ifade ile eşleşen tüm metin parçaları bulunur ve sonuç olarak bir dizi veya nil değeri döndürülür.

#Örneğin, aşağıdaki Ruby kodu bir metin içinde "hello" kelimesini arar:

text = "Merhaba Dünya! Hello World!"
result = text.match(/hello/)
puts result

#Burada text değişkenindeki metin, /hello/ ifadesiyle aranır. match metodu, ifadeyle eşleşen ilk parçayı bulur ve 
#sonucu bir MatchData nesnesi olarak döndürür. Bu örnekte, result değişkenindeki sonuç, "Hello" kelimesini içeren 
#bir MatchData nesnesi olacaktır.



# =∽ and #match operators 

#= ve =~ operatörleri Ruby'de düzenli ifadelerle çalışmak için kullanılırken, #match metodu da aynı işi yapar.

#= operatörü, bir değişkene atanan düzenli ifadeyle tam olarak eşleşen bir metin parçası olup olmadığını kontrol eder. 
#Eğer eşleşme varsa, true değeri döndürür; aksi takdirde false döndürür.

text = "Hello World!"
if text =~ /World/
  puts "Metin 'World' kelimesini içeriyor."
end

##match metodu, bir düzenli ifade ile eşleşen ilk metin parçasını bulur ve bir MatchData nesnesi olarak döndürür. 
#Eğer eşleşme yoksa, nil döndürür.

text = "Hello World!"
result = text.match(/World/)
puts result.to_s


#Metacharacters and Escapes 

=begin
Metakarakterler, düzenli ifadelerde özel anlam taşıyan karakterlerdir. Bu karakterler, 
#bir metin içinde belirli bir deseni tanımlamak için kullanılır.

Bazı yaygın metakarakterler şunlardır:

. (nokta) : Herhangi bir tek karakteri eşleştirir, ancak yeni satır karakterini eşleştirmez.
* (yıldız) : Önceki karakterin sıfır veya daha fazla tekrarını eşleştirir.
+ (artı) : Önceki karakterin bir veya daha fazla tekrarını eşleştirir.
? (soru işareti) : Önceki karakterin sıfır veya bir kez tekrarını eşleştirir.
^ (şapka) : Desenin başlangıcına eşleşir.
$ (dolar işareti) : Desenin sonuna eşleşir.
| (dikey çizgi) : İki deseni "veya" olarak birleştirir.
[ ] (köşeli parantez) : Karakter kümesini belirtir.
{ } (süslü parantez) : Önceki karakterin belirtilen tekrar sayısını belirtir.
\ (ters bölü) : Özel karakterleri kaçırmak veya bazı özel karakterlerin özel anlamlarını iptal etmek için kullanılır.
=end

#Örneğin, . karakteri, herhangi bir tek karakteri eşleştiren bir metakarakterdir. 
#Aşağıdaki örnek, "cat" kelimesindeki herhangi bir karakteri eşleştirecektir:
text = "cat"
result = text.match(/./)
puts result.to_s


#Yıldız * karakteri, önceki karakterin sıfır veya daha fazla tekrarını eşleştirir. 
#Aşağıdaki örnek, "a" karakterinin sıfır veya daha fazla tekrarını içeren tüm metin parçalarını eşleştirecektir:
text = "abracadabra"
result = text.match(/a*/)
puts result.to_s


#Ters bölü \ karakteri, düzenli ifade içinde özel anlam taşıyan karakterlerin özel anlamlarını iptal etmek için kullanılır. 
#Örneğin, . karakteri herhangi bir karakteri eşleştirirken, \. karakter dizisi sadece bir nokta karakterini eşleştirir.
text = "Hello World."
result = text.match(/\./)
puts result.to_s
#Bu örnek, text değişkenindeki "." karakterini eşleştirecektir.


#Köşeli parantezler [], belirli bir karakter kümesini eşleştirmek için kullanılır. 
#Aşağıdaki örnek, "a", "b" veya "c" karakterlerinden herhangi birini eşleştirecektir:
text = "abcd"
result = text.match(/[abc]/)
puts result.to_s


#Süslü parantezler {} ile belirli bir tekrar sayısı belirtilir. Örneğin, {3} ile üç kez tekrar eden karakteri eşleştirebilirsiniz. 
#Aşağıdaki örnek, "o" karakterinin üç kez tekrar edildiği bir metin parçasını eşleştirecektir:
text = "woooooow"
result = text.match(/o{3}/)
puts result.to_s


#Özel bir kaçış karakteri olan \s, bir boşluk veya diğer boşluk karakterlerini eşleştirir. 
#Aşağıdaki örnek, "Hello World" içindeki boşluk karakterini eşleştirecektir:
text = "Hello World"
result = text.match(/\s/)
puts result.to_s


#Son olarak, düzenli ifadelerde kullanılan () parantezleri, eşleştirilen metin parçasını gruplandırmak için kullanılır. 
#Aşağıdaki örnek, "John Smith" adlı bir kişinin adını ve soyadını eşleştirecektir:
text = "John Smith"
result = text.match(/(\w+) (\w+)/)
puts result[1] # John
puts result[2] # Smith


=begin

*: Bir karakter veya karakter sınıfının sıfır veya daha fazla tekrar edileceğini belirtir. Örneğin, /a*/ düzenli ifadesi, 
"a" karakterinin sıfır veya daha fazla kez tekrar edildiği herhangi bir dizeyi eşleştirir.

+: Bir karakter veya karakter sınıfının bir veya daha fazla kez tekrar edileceğini belirtir. Örneğin, /a+/ düzenli ifadesi, 
"a" karakterinin bir veya daha fazla kez tekrar edildiği herhangi bir dizeyi eşleştirir.

?: Bir karakter veya karakter sınıfının sıfır veya bir kez tekrar edileceğini belirtir. Örneğin, /a?/ düzenli ifadesi, 
"a" karakterinin sıfır veya bir kez tekrar edildiği herhangi bir dizeyi eşleştirir.

{n}: Bir karakter veya karakter sınıfının tam olarak n kez tekrar edileceğini belirtir. Örneğin, /a{3}/ düzenli ifadesi, 
"a" karakterinin tam olarak üç kez tekrar edildiği herhangi bir dizeyi eşleştirir.

{n,}: Bir karakter veya karakter sınıfının en az n kez tekrar edileceğini belirtir. Örneğin, /a{2,}/ düzenli ifadesi, 
"a" karakterinin en az iki kez tekrar edildiği herhangi bir dizeyi eşleştirir.

{,m}: Bir karakter veya karakter sınıfının en fazla m kez tekrar edileceğini belirtir. Örneğin, /a{,2}/ düzenli ifadesi, 
"a" karakterinin en fazla iki kez tekrar edildiği herhangi bir dizeyi eşleştirir.

{n,m}: Bir karakter veya karakter sınıfının en az n ve en fazla m kez tekrar edileceğini belirtir. Örneğin, 
/a{2,3}/ düzenli ifadesi, "a" karakterinin en az iki ve en fazla üç kez tekrar edildiği herhangi bir dizeyi eşleştirir.

=end



str1 = "hello world"
str2 = "Hello World"

if str1 =~ /(h|H)ello (w|W)orld/
  puts "Matched!"
else
  puts "Not matched!"
end

if str2 =~ /(h|H)ello (w|W)orld/
  puts "Matched!"
else
  puts "Not matched!"
end





#-------------------------------
str1 = "foo 123"
str2 = "bar 456"

regex = /(foo|bar) (\d+)/

match1 = regex.match(str1)
match2 = regex.match(str2)

if match1
  puts "Matched!"
  puts "Group 1: #{match1[1]}"
  puts "Group 2: #{match1[2]}"
else
  puts "Not matched!"
end

if match2
  puts "Matched!"
  puts "Group 1: #{match2[1]}"
  puts "Group 2: #{match2[2]}"
else
  puts "Not matched!"
end


