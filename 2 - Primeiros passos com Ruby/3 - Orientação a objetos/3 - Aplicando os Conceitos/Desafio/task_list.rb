require_relative 'task'

def menu()
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Buscar tarefa'
  puts '[4] Marcar tarefa como feita'
  puts '[5] Sair'
  puts
  print 'Escolha uma opção: '

  gets.to_i
end

option = menu
tasks = []

while option != 5 do
  if option == 1
    print 'Digite sua tarefa: '
    task_description = gets.chomp
    puts 'Tarefa cadastrada: ' + task_description
    tasks << Task.new(description: task_description, status: false)
  elsif option == 2
    puts
    puts 'Lista de tarefas: '
    tasks.each do |task|
      puts "#{task.to_s}"
    end
  elsif option == 3
    puts
    print 'Digite o texto que deseja buscar: '
    search_text = gets.strip
    tasks.each do |task|
      if task.description.downcase.include? search_text
        puts "#{task.to_s}"
      end
    end
  elsif option == 4
    puts
    tasks.each_with_index do |task, index|
      puts "##{index + 1} - #{task.description}"
    end
    print 'Qual o número da tarefa que deseja marcar como feita:'
    index = gets.to_i
    tasks[index - 1].status = true
    puts 'Tarefa marcada como feita!'
  else
    puts
    puts 'Opção inválida'
    puts
  end

  option = menu
end