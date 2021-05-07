import casasDeComidas.*
import concurso.*

/** Platos **/

object ratatouille {
	
	method puntaje() = paris.clima().size()
	
	method esAptoParaCeliacos() = true
}

object tallarines {
	method puntaje() = 8
	
	method esAptoParaCeliacos() = false
}

object hamburguesa {
	const ingredientes = ['carne', 'carne', 'jamon', 'queso', 'lechuga', 'tomate']

	method puntaje() {
		return ingredientes.size() + papasFritas.puntaje() + self.adicional()
	}
	
	method adicional() {
		if (ingredientes.contains('queso'))
			return 1
		else
			return 0
	}
	
	method agregarIngrediente(ingre) {
		ingredientes.add(ingre)
	}

	method quitarIngrediente(ingre) {
		ingredientes.remove(ingre)
	}
	
	method esAptoParaCeliacos() = true
}

object milanesaNapolitana {
	var guarnicion = papasFritas
	var tipoDeCarne = carneVacuna
	
	method puntaje() {
		return tipoDeCarne.puntaje() + guarnicion.puntaje()
	}
	
	method cambiarGuarnicion(otraGuarnicion) {
		guarnicion = otraGuarnicion
	}
	
	method cambiarTipoDeCarne(otroTipoDeCarne) {
		tipoDeCarne = otroTipoDeCarne
	}
	
	method esAptoParaCeliacos() = false
}

object papasFritas {
	method puntaje() = 3
	
	method esAptoParaCeliacos() = true
}

object pure {
	var tieneManteca = false
	
	method puntaje() {
		if (tieneManteca)
			return 2
		else
			return 1
	}
	
	method agregarle(manteca) {
		tieneManteca = true
	}
	
	method esAptoParaCeliacos() = true
}

object matambreALaPizza {
	var tipoDeCarne = carneVacuna
	
	method puntaje(){
		return carneVacuna.puntaje() + 2
		}
	
	method cambiarTipoDeCarne(otroTipoDeCarne) {
		tipoDeCarne = otroTipoDeCarne
	}
	
	method esAptoParaCeliacos() = true
}

object carneVacuna {
	method puntaje() {
		return 8 + hacienda.efecto()
	}
}

object carnePollo {
	method puntaje() {
		return carneVacuna.puntaje() - 2
	}
}

object carneCerdo {
	method puntaje() {
		return 0.75 * carneVacuna.puntaje()
	}
}

object pancho {
	var aderezo = true
	
	method esAptoParaCeliacos() = false
	
	method puntaje() {
		if (aderezo) 
			return 2
		else
			return 1
	}
	
	method quitarAderezo() {
		aderezo = false
	}
}

object pizza{
	method puntaje() = 5
	
	method esAptoParaCeliacos() = false
}

object ninguno {
	method puntaje() = 0
	
	method esAptoParaCeliacos() = false
}



