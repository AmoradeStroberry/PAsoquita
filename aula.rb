class Homo
    attr_acessor :raca, :tipo, :ano, :altura, :vida, :nome
    def inicialize (tamanho,tipo,altura,ano,nome)
        @tamanho = tamanho
        @tipo =tipo 
        @altura = altura
        @ano = ano
        @vida = vida
        @nome = nome
        
    end
    
    def