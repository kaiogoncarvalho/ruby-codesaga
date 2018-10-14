class Tasks
  def self.create()
    print 'Digite sua tarefa: '
    task_description = gets.chomp
    deadline = self.deadline
    if deadline
      task = TaskDeadline.new(description: task_description, deadline: deadline, status: false)
    else
      task = Task.new(description: task_description, status: false)
    end
    puts 'Tarefa cadastrada: ' + task_description
    task
  end

  def self.deadline
    print 'Deseja informar o Prazo (y/n): '
    option = gets.strip
    if option.downcase == 'y'
      print 'Informe o Prazo (dd/mm/aaaa): '
      deadline = gets.strip
    elsif option.downcase == 'n'
      return false
    else
      puts 'Opção inválida, informe "y" ou "n"'
      return self.deadline
    end
  end

  def self.search(tasks:, search:)
    puts tasks.find_all { |task| task.description.downcase.include? search }
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