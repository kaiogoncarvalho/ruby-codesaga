class Tasks
  def self.search(tasks:, search:)
    puts tasks.find_all { |task| task.description.downcase.include? search }
  end

  def self.save(tasks)
    File.open('task.txt', 'w') do |file|
      tasks.each_with_index do |task, index|
        file.write("#{index}||#{task.description}||#{task.status}\n")
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
        tasks[registers[0].to_i] = Task.new(description: registers[1], status: (registers[2] == 'true' ? true : false))
      end
    end
    tasks
  end
end