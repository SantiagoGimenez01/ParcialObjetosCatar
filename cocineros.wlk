class Cocinero{
    var especialidad

    method catar(plato) = especialidad.calificar(plato)
    method cambiarEspecialidad(otra){
        especialidad = otra
    }
}

object chef{

    method calificar(plato) = if(plato.esBonito()) 10 else 0
}

class Pastelero{
    const nivelDulzor

    method calificar(plato) = 5 * plato.azucar() / nivelDulzor
}