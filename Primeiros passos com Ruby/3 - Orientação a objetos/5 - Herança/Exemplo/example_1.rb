class Task
  attr_reader :description, :status

  def initialize(description, status)
    @description = description
    @status = status
  end

  def mark_as_done
    @status = true
  end

  private

  attr_writer :status


end


task = Task.new('Comprar Leite', false)

# task.status = true error

task.mark_as_done

puts task
