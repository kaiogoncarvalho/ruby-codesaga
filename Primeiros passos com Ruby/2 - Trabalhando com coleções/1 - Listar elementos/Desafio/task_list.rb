def menu()

  puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Sair'

  puts

  print 'Opção escolhida: '

  return gets.to_i

end

def show_tarefas(tarefas)
  tarefas.each_with_index do |item, index|
    puts "##{index+1} - #{item}"
  end
end

tarefas = []

while true do

  opcao = menu()



  if opcao == 1
    print 'Digite sua tarefa: '
    tarefa = gets
    tarefas << tarefa
    system('clear')
    puts 'Tarefa cadastrada: ' + tarefa
    puts
  elsif opcao == 2
    system('clear')
    show_tarefas(tarefas)
    puts
  elsif opcao == 3
    break
  else
    system('clear')
    puts 'Opção Inválida'
    puts
  end

end