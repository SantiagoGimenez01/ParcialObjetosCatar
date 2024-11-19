import platos.*

class Cocinero{
    var especialidad

    method catar(plato) = especialidad.calificar(plato)
    method cambiarEspecialidad(otra){
        especialidad = otra
    }
    method cocinar() = especialidad.crearPlato()
    method participarEn(torneo){
        torneo.presentarPlato(self.cocinar())
    }
}

class Chef{
    const caloriasLimite

    method cumpleExpectativas(plato) = plato.esBonito() && plato.calorias() <= caloriasLimite
    method calificar(plato) = if(self.cumpleExpectativas(plato)) 10 else 0
    method crearPlato() = new Principal(esBonito = true, azucarAgregado = caloriasLimite, autor = self)
}

class Souschef inherits Chef{

    override method calificar(plato) = if(self.cumpleExpectativas(plato)) 10 else (plato.calorias() / 100).min(6)
    override method crearPlato() = new Entrada(autor = self)
}

class Pastelero{
    const nivelDulzor

    method calificar(plato) = (5 * plato.azucar() / nivelDulzor).min(10)
    method crearPlato() = new Postre(colores = nivelDulzor / 50, autor = self)
}