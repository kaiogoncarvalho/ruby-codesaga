puts 'Informe o Seu Nome'
nome=gets.strip

puts 'Informe a sua Idade'
idade=gets.to_i

puts "O seu nome é #{nome}"
puts "A sua idade é #{idade}"

if idade > 18
  puts "Você está apto a dirigir"
end

if idade == 18
  puts "Você está apto a tirar a habilitação"
end

if idade < 18
  puts "Você não está apto a dirigir"
end