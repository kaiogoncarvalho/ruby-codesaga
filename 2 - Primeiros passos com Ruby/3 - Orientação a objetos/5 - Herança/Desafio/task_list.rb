require_relative 'task'
require_relative 'task_deadline'
require_relative 'tasks'

option = Tasks.menu
tasks = Tasks.load

def search(array, searches)
  results = []
  searches.each do |item|
    results[array.find_index{ |i| i.object_id == item.object_id }] = item
  end
  results
end

while option != 5 do
  system('clear')
  if option == 1
    print 'Digite sua tarefa: '
    task_description = gets.chomp
    deadline = Tasks.deadline
    tasks << Tasks.create(description: task_description, deadline: deadline, status: false)
  elsif option == 2
    puts
    puts 'Lista de tarefas: '
    puts tasks.each {|task| task.to_s}
  elsif option == 3
    puts
    print 'Digite o texto que deseja buscar: '
    search = gets.strip
    puts tasks.find_all { |task| task.description.downcase.include? search }
  elsif option == 4
    puts
    search_tasks = tasks.find_all { |task| task.status == false }
    search_tasks.each_with_index do |task, index|
      puts "##{index + 1} - #{task.description}"
    end
    print 'Qual o número da tarefa que deseja marcar como feita: '
    index = gets.to_i
    task = search_tasks[index - 1]
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
  option = Tasks.menu
end

Tasks.save(tasks)
system('clear')
puts 'Tarefas foram salvas'
puts