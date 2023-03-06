=begin
    
Hash'ler sözlük gibi çalışır
Hash içerisindeki objelere, key kullanara erişebilirsiniz

=end


person = {name: "Ahmet", job: "Developer"}
person = {:name => "Ahmet", :job => "Developer"} # Eski syntax
person[:name]
=> "Ahmet"
person.keys
=> [:name, :job]



# Telefon defteri Hash'ini oluşturma
telefon_defteri = {
    "Ali" => "555-1234",
    "Ayşe" => "555-5678",
    "Fatma" => "555-9012"
  }
  
  # Hash'e yeni bir kişi ekleyebiliriz
  telefon_defteri["Mehmet"] = "555-3456"
  
  # Hash'in tüm anahtar-değer çiftlerini döngü ile yazdıralım
  telefon_defteri.each do |anahtar, deger|
    puts "#{anahtar}: #{deger}"
  end

  

    # Sembole dayalı bir Hash oluşturma
renkler = {
    :kirmizi => ["fuşya", "bordo", "pembe"],
    :mavi => ["turkuaz", "lacivert", "gök mavisi"],
    :yesil => ["limon yeşili", "çimen yeşili", "zeytin yeşili"]
  }
  

