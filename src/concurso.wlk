import casasDeComidas.*
import platos.*

object jurado {
	
	method mejorCasaDeComida() {
		return paris.casasDeComidas().max{casa => casa.puntaje()}
	}
}

object paris {
	const casasDeComidas = [finoli, bodegon, mcDelta, puestoCallejero]
	var clima = "soleado"
	
	method clima() = clima
	
	method cambiarClima(nuevoClima) {
		clima = nuevoClima
	}
	
	method casasDeComidas() = casasDeComidas
}

object gobierno {
	const casasDeComidas = paris.casasDeComidas()
	
	// el gobierno decreta pandemia y obliga a todos los restaurantes a tomar medidas
	method pandemia(){
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

