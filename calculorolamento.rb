

def descobrirF (cv,rpm,r,ang)
    f=((60*736 *cv*2)/(2*(Math::PI)*rpm*r))/(Math.cos(ang*(Math::PI/180)))
    return f
end
def forcamancal (a)
    fa=a/2
    return fa
end
def vida (f,c,conf,rpm)
    vida= ((conf*(c/f)**3)*10**6)/(60*rpm)
    return vida
end


puts "Considere o seguinte problema"
puts "Uma máquina utiliza um eixo apoiado em mancais distantes de 550mm. Neste eixo, uma engrenagem localizada ao centro da distância entre mancais, cujo diâmetro primitivo e ângulo de pressão, são respectivamente, 180mm e 20º, transmite uma potência de 25 CV a uma rotação de 200 rpm. Calcule quantas horas de operação cada rolamento de uma carreira de esferas suportará até a falha considerando uma confiabilidade de 94%. "

puts "          |F          "
puts "          |           "
puts "          V           "
puts " A-------------------B"
puts "           L          "
puts " |___________________|"


print "Quantos cavalos de potência: "
cv= gets.to_f
print "Quantos rpm: "
rpm = gets.to_f
print "Qual o diâmetro primitivo da engrenagem em mm: "
r=gets.to_f
print "Qual o ângulo de ataque na engrenagem: "
angulo=gets.to_i

puts "A força tangencial atuante na engrenagem é de #{descobrirF(cv,rpm,r,angulo).round 2} N"
fa=descobrirF(cv,rpm,r,angulo)

puts "Pela força estar atuando exatamente metade da distância entre os maicais, o mancal A e B sofrem a mesma força."
puts "A atuante no mancal A é de #{forcamancal(fa).round 2} N"
fv=forcamancal(fa)

print "Qual o C do mancal: "
c=gets.to_i

print "Qual o kr do rolamento de acordo com a confiabilidade de 94%: "
conf=gets.to_f

puts "O rolamento atuante no mancal tem vida de #{vida(fv,c,conf,rpm).round 2} horas."