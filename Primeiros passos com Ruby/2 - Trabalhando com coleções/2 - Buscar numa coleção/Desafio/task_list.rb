def menu()

  puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Buscar Tarefa'
  puts '[4] Sair'

  puts

  print 'Opção escolhida: '

  return gets.to_i

end

def show(tarefas)

  tarefas.each_with_index do |item, index|
    if item
      puts "##{index + 1} - #{item}"
    end
  end

end

def search(array, search)
  results = array.find_all {|item| item.casecmp?(search) }
  searches = []
  results.each do |item|
    searches[array.find_index(item)] = item
  end
  searches
end

tarefas = []

while true do

  opcao = menu()

  if opcao == 1
    print 'Digite sua tarefa: '
    tarefa = gets.strip
    tarefas << tarefa
    system('clear')
    puts 'Tarefa cadastrada: ' + tarefa
    puts
  elsif opcao == 2
    system('clear')
    puts 'Tarefa(s) Cadastrada(s): '
    show(tarefas)
    puts
  elsif opcao == 3
    print 'Digite a busca: '
    search = gets.strip
    results = search(tarefas, search)
    system('clear')
    if results.length > 0
      puts 'Tarefa(s) encontrada(s): '
      show(results)
    else
      puts 'Não foi encontrado nenhuma tarefa.'
    end
    puts
  elsif opcao == 4
    break
  else
    system('clear')
    puts 'Opção Inválida'
    puts
  end

end