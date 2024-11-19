import platos.*

class Cocinero{
    var especialidad

    method catar(plato) = especialidad.calificar(plato)
    method cambiarEspecialidad(otra){
        especialidad = otra
    }
    method cocinar() = especialidad.crearPlato()
}

class Chef{
    const caloriasLimite

    method cumpleExpectativas(plato) = plato.esBonito() && plato.calorias() <= caloriasLimite
    method calificar(plato) = if(self.cumpleExpectativas(plato)) 10 else 0
    method crearPlato() = new Principal(esBonito = true, azucar = caloriasLimite)
}

class Souschef inherits Chef{

    override method calificar(plato) = if(self.cumpleExpectativas(plato)) 10 else (plato.calorias() / 100).min(6)
    override method crearPlato() = new Entrada()
}

class Pastelero{
    const nivelDulzor

    method calificar(plato) = (5 * plato.azucar() / nivelDulzor).min(10)
    method crearPlato() = new Postre(colores = nivelDulzor / 50)
}