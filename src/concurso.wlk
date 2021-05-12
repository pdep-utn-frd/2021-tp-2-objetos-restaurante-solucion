import casasDeComidas.*
import platos.*

object concurso {
	const casasDeComidas = [finoli, bodegon, mcDelta, puestoCallejero]
	
	method mejorCasaDeComida() {
		return casasDeComidas.max{casa => casa.puntaje()}
	}
	
	method pandemia(){ 	// El Gobierno decreta pandemia y obliga a todos los restaurantes a tomar medidas.
		casasDeComidas.forEach({casa => casa.porPandemia()})
	}
}


object hacienda {
	var estado = 0

	method cambiarEstado(nuevoEstado) {
		estado = nuevoEstado
	}

	method efecto() = estado 
}

