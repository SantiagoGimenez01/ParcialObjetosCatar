class Cocinero{
    var especialidad

    method catar(plato) = especialidad.calificar(plato)
    method cambiarEspecialidad(otra){
        especialidad = otra
    }
}

class Chef{
    const caloriasLimite

    method cumpleExpectativas(plato) = plato.esBonito() && plato.calorias() <= caloriasLimite
    method calificar(plato) = if(self.cumpleExpectativas(plato)) 10 else 0
}

class Souschef inherits Chef{

    override method calificar(plato) = if(self.cumpleExpectativas(plato)) 10 else (plato.calorias() / 100).min(6)
}

class Pastelero{
    const nivelDulzor

    method calificar(plato) = (5 * plato.azucar() / nivelDulzor).min(10)
}