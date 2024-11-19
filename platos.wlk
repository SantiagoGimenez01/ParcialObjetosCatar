
class Entrada{
  const property azucar = 0

  method esBonito() = true
  method calorias() = 3 * azucar + 100
}

class Principal{
  const esBonito 
  const property azucar = 50

  method esBonito() = esBonito
  method calorias() = 3 * azucar + 100
}

class Postre{
  const colores
  const property azucar = 120

  method esBonito() = colores > 3
  method calorias() = 3 * azucar + 100
}