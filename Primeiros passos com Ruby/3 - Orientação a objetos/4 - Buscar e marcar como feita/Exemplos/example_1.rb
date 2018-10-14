require_relative 'task'
require_relative 'task_printer'

tasks = []
tasks << Task.new(description: 'Comprar Pão')
tasks << Task.new(description: 'Comprar Leite')

TaskPrinter.print_cards(tasks)

