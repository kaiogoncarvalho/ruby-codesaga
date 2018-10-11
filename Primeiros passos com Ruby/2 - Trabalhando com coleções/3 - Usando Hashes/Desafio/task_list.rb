def menu()

  puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Buscar tarefa'
  puts '[4] Marcar tarefa como finalizada'
  puts '[5] Sair'

  puts

  print 'Opção escolhida: '

  gets.to_i

end

def show(tarefas)

  tarefas.each_with_index do |item, index|
    if item
      status = item[:status] ? 'Finalizado' : 'Não Finalizado'
      puts "##{index + 1} - #{item[:name]} - #{status}"
    end
  end

end

def search(array, searches)
  results = []
  searches.each do |item|
    results[array.find_index{ |i| i.object_id == item.object_id }] = item
  end
  results
end

def change_status(tarefa)
  tarefa[:status] = true
end

tarefas = []

while true do

  opcao = menu()

  case opcao
  when 1
    print 'Digite sua tarefa: '
    tarefa = gets.strip
    tarefas << { name:tarefa, status:false }
    system('clear')
    puts 'Tarefa cadastrada: ' + tarefa
  when 2
    system('clear')
    if tarefas.length == 0
      puts 'Não existem tarefas cadastradas'
      puts
      next
    end

    puts 'Tarefa(s) Cadastrada(s): '
    show(tarefas)
  when 3
    print 'Digite a busca: '
    search = gets.strip
    results = search(tarefas, tarefas.find_all {|item| item[:name].casecmp?(search) })
    system('clear')
    if results.length > 0
      puts 'Tarefa(s) encontrada(s): '
      show(results)
    else
      puts 'Não foi encontrado nenhuma tarefa.'
    end
  when 4
    system('clear')
    results = search(tarefas, tarefas.find_all {|item| item[:status] == false })
    if results.length == 0
      puts 'Não existem tarefas não finalizadas'
      puts
      next
    end
    puts 'Tarefa(s): '
    show(results)
    puts
    print 'Informe o ID da tarefa: '
    id = gets.strip.to_i
    tarefa = tarefas[id-1]
    system('clear')
    if tarefa && id >= 0 && tarefa[:status] == false
      change_status(tarefa)
      puts "Tarefa '#{tarefa[:name]}' foi marcada como finalizada"
    else
      puts 'Tarefa não encontrada.'
    end
  when 5
    break
  else
    system('clear')
    puts 'Opção Inválida'
  end
  puts
end