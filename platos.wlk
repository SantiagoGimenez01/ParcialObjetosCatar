class Plato{
  const property autor
  const caloriasBase = 100

  method calorias() = 3 * self.azucar() + caloriasBase
  method azucar()
}
class Entrada inherits Plato{

  override method azucar() = 0
  method esBonito() = true
}

class Principal inherits Plato{
  const esBonito 
  const property azucarAgregado

  method esBonito() = esBonito
  override method azucar() = azucarAgregado
}

class Postre inherits Plato{
  const colores

  method esBonito() = colores > 3
  override method azucar() = 120
}