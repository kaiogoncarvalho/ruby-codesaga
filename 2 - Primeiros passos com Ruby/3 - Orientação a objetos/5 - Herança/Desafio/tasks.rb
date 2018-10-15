class Tasks
  def self.menu()
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

  def self.create(description:,deadline:,status:)
    if deadline
      TaskDeadline.new(description: description, deadline: deadline, status: status)
    else
      Task.new(description: description, status: status)
    end

  end

  def self.deadline
    print 'Deseja informar o Prazo (y/n): '
    option = gets.strip
    if option.downcase == 'y'
      print 'Informe o Prazo: '
      deadline = gets.strip
    elsif option.downcase == 'n'
      false
    else
      puts 'Opção inválida, informe "y" ou "n"'
      self.deadline
    end
  end

  def self.save(tasks)
    File.open('task.txt', 'w') do |file|
      tasks.each_with_index do |task, index|
        file.write("#{index}||#{task.save}\n")
      end
    end
  end

  def self.load()
    tasks = []
    if File.exist?('task.txt')
      file = File.read('task.txt')
      lines = file.split("\n")
      lines.each do |line|
        registers = line.split('||')
        description = registers[1]
        status = (registers[2] == 'true' ? true : false)
        if registers.length == 4
          deadline = registers[3]
          task = TaskDeadline.new(description: description, status: status, deadline: deadline)
        else
          task = Task.new(description: description, status: status)
        end
        tasks[registers[0].to_i] = task
      end
    end
    tasks
  end

end