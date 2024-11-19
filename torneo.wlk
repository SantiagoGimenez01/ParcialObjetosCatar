import cocineros.*
import platos.*

class Torneo{
    const catadores = []
    const platos = []

    method presentarPlato(plato){
        platos.add(plato)
    }
    method obtenerPuntuacionDe(plato) = catadores.sum({catador => catador.calificar(plato)})
    method obtenerGanador() = platos.max({plato => self.obtenerPuntuacionDe(plato)}).autor()
} 
