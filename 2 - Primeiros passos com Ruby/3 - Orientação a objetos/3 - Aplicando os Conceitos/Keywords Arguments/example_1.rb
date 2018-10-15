def pagar(valor, forma_pagto='boleto')
  puts "Pagando #{valor} com #{forma_pagto}"
end

pagar(1000)

pagar('cartão', 1300)

def pagar_keyword(valor:, forma_pagto:'boleto')
  puts "Pagando #{valor} com #{forma_pagto}"
end

pagar_keyword(valor:1500)

pagar_keyword(forma_pagto: 'Cartão', valor: 1500)

#pagar_keyword(1000) #error

