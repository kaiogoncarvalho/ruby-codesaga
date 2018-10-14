class TaskDeadline < Task
  def initialize(description:,deadline:,status:false)

    super(description:description, status:status)
    @deadline = deadline
  end

  def to_s
    "#{@description} | #{status_text} - Prazo: #{@deadline}"
  end

  def save
    "#{@description}||#{@status}||#{@deadline}"
  end

end