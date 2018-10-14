require_relative 'task'
require_relative 'task_deadline'
require_relative 'tasks'

def menu()
  puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
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
tasks = Tasks.load

while option != 5 do
  if option == 1
    tasks << Tasks.create
  elsif option == 2
    puts
    puts 'Lista de tarefas: '
    tasks.each do |task|
      puts "#{task.to_s}"
    end
  elsif option == 3
    puts
    print 'Digite o texto que deseja buscar: '
    Tasks.search(tasks: tasks, search: gets.strip)
  elsif option == 4
    puts
    tasks.each_with_index do |task, index|
      puts "##{index + 1} - #{task.description}"
    end
    print 'Qual o número da tarefa que deseja marcar como feita:'
    index = gets.to_i
    task = tasks[index - 1]
    if task && index > 0
      task.mark_as_done
      puts 'Tarefa marcada como feita!'
    else
      puts 'Tarefa não encontrada.'
    end
  else
    puts
    puts 'Opção inválida'
    puts
  end
  puts
  option = menu
end

Tasks.save(tasks)
system('clear')
puts 'Tarefas foram salvas'
puts