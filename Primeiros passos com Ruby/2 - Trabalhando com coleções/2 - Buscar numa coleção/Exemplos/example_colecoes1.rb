busca = gets.chomp
tarefas = ['comprar pão', 'comprar leite', 'fazer bolo']
elementos_encontrados = []
tarefas.each do |tarefa|
  if tarefa == busca
    elementos_encontrados << tarefa
  end
end

puts elementos_encontrados