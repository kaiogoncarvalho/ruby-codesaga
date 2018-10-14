def algum_metodo(params)
  arg1 = params[:arg1]
  arg2 = params[:arg2]
  arg3 = params[:arg3]

  puts "Arg1:#{arg1} Arg2:#{arg2} Arg3:#{arg3}"

end

algum_metodo(arg1:'Argumento1', arg2: 'Argumento2', arg3: :argumento3)
puts
algum_metodo(arg1: 'Argumento 1', arg2: 'Argumento 2', arg1: :argumento3)

def algum_metodo_keyword(arg1:, arg2:, arg3:)
  puts "Arg1:#{arg1} Arg2:#{arg2} Arg3:#{arg3}"
end

algum_metodo_keyword(arg1:'Argumento1', arg2: 'Argumento2', arg3: :argumento3)
puts
#algum_metodo_keyword(arg1: 'Argumento 1', arg2: 'Argumento 2', arg1: :argumento3) error