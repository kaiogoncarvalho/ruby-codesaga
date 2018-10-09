puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
puts '[1] Inserir uma tarefa'
puts '[2] Ver todas as tarefas'
puts
print 'Opção escolhida: '

opcao = gets.to_i
tarefa = ""

if opcao == 1
  print 'Digite sua tarefa: '
  tarefa = gets
  puts
  puts 'Tarefa cadastrada: ' + tarefa
else
  puts
  puts tarefa
end