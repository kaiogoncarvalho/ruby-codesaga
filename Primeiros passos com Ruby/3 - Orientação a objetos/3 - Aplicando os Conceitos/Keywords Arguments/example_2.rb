def pagar(valor:, forma_pagto:, **opcoes)
  puts "Pagando #{valor} com #{forma_pagto}"
  puts "Opcoes #{opcoes}"
end

pagar(valor: 1500, limite: 5000, forma_pagto: 'Cartão')

# pagar(valor: 1500, 5000, forma_pagto: 'Cartão') Error