import cocineros.*
import platos.*

class Torneo{
    const catadores = []
    const platos = []

    method presentarPlato(plato){
        platos.add(plato)
    }
    method obtenerPuntuacionDe(plato) = catadores.sum({catador => catador.calificar(plato)})
    method obtenerGanador(){
        if(platos.isEmpty())
            throw new DomainException(message="No se puede definir el ganador de un torneo sin participantes")
        return platos.max({plato => self.obtenerPuntuacionDe(plato)}).autor()
    }
} 
