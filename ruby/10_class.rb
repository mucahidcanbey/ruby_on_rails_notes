class Araba
    def initialize(marka, model, yil)
      @marka = marka
      @model = model
      @yil = yil
    end
  
    def bilgi
      "#{@marka} #{@model} (#{@yil})"
    end
  end
  
  araba1 = Araba.new("Toyota", "Corolla", 2022)
  puts araba1.bilgi # Toyota Corolla (2022)
  
  araba2 = Araba.new("Honda", "Civic", 2021)
  puts araba2.bilgi # Honda Civic (2021)
  