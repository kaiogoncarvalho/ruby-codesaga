while true do


  puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Sair'
  puts
  print 'Opção escolhida: '


  opcao = gets.to_i
  tarefa = ""
  if opcao == 1

    print 'Digite sua tarefa: '
    tarefa = gets
    system('clear')
    puts 'Tarefa cadastrada: ' + tarefa
    puts
  elsif opcao == 2
    system('clear')
    puts tarefa
    puts
  elsif opcao == 3
    break
  else
    system('clear')
    puts 'Opção inválida'
    puts
  end
end