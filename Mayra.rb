 class Mayra
     
     inoclude Invetario
     
    attr_accessor :race,:name,:peso,:idade,:fome,:comida,:roupa,:agua,:remedio,:flores
    def initialize (name,race,peso,idade,fome)
        @race = race
        @name = name 
        @peso = peso 
        @idade = idade 
        @fome = fome
    end 

    def comer (comidaQtd)
        self.fome = self.fome - self.fome * comidaQtd
        self.comida = self.comida - comidaQtd
        puts"#{self.name} tem #{self.comida} de comida"
        puts"#{self.name} diminoiu sua fome para #{self.fome}"
    end 
            
    def adicionarFome(fomeQtd)
        self.fome = self.fome + fomeQtd
        puts"A fome de #{self.name} teve aumento para #{self.fome}"
        if self.fome >= 100
        puts"#{self.name} morreu de fome"
        end
    end
end  

modulo Inventario
    def inventario (comida,roupa,agua,remedio,flores)
        @agua = agua
        @roupa = roupa
        @comida = comida
        @remedio = remedio
        @flores = flores
    end
end

carente = Mayra.new("leleninha","calopsita","não sei","1",10,)

puts "A #{carente.name} e é uma #{carente.race} ,ela tem #{carente.idade} mês,a sua fome está em #{carente.fome}"

cristal = Mayra.new("Cristal","Pincher","não sei","2 anos",50)

puts "A #{cristal.name} e é um #{cristal.race} que tem #{cristal.idade}, sua fome está em #{cristal.fome}"

floquinho = Mayra.new("Floquinho","Poodle com place","não sei","5",70)

puts "A #{floquinho.name} e é um #{floquinho.race} que tem #{floquinho.idade}anos, sua fome está em #{floquinho.fome}"  

carente.adicionarFome(30)

carente.comida = 3

carente.comer(2)
    
class Filhos < Mayra  
    attr_accessor :pais,:cor
    def initialize(name,race,peso,idade,fome,pais,cor)
        super(name,race,peso,idade,fome)
        @pais = pais
        @cor = cor
    end
end
    
coca = Filhos.new("Coca","Poodle","5","3",0,"floquinho","branco")
    
puts "A #{coca.name} tem #{coca.idade} meses,seu pai é #{coca.pais},ela é #{coca.cor}"  

