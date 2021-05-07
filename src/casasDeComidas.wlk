import platos.*
import concurso.*

/** Casas de comidas **/

object finoli {
	const chefsContratados = [cristof, donato]
	var chefPrincipal = cristof
	const platoDelDia = chefPrincipal.especialidad()
	const valoraciones = []
	
	method contratar(nuevoChef) {
		chefsContratados.add(nuevoChef)
	}
	
	method cambiarChefPrincipal(chef) {
		chefPrincipal = chef
	}
	
	method agregarValoracion(valoracion) {
		if (valoracion.between(0,5)){
			valoraciones.add(valoracion)
		}
	}
	
	method puntaje() {
		return platoDelDia.puntaje() + self.promDeValoraciones()
		}
	
	method promDeValoraciones() {
		return valoraciones.sum() / valoraciones.size()
	}
	
	method tieneAlgunPlatoParCeliacos() {
		platoDelDia.esAptoParaCeliacos()
	}
	
	method porPandemia() { 
		// Finoli cierra sus puertas y no puede hacer delivery por un caso positivo
		// En consecuencia pierde todas su valoraciones.
		valoraciones.clear()
	}
}

object bodegon {
	var menu = [matambreALaPizza, milanesaNapolitana, tallarines]
	
	method menu() = menu
	
	method puntaje() {
		return 2 * self.peorPlato().puntaje()
	}
	
	method peorPlato() {
		return menu.min{plato => plato.puntaje()}
	}
	
	method agregarPlato(unPlato) {
		menu.add(unPlato)
	}
	
	method tieneAlgunPlatoParCeliacos() {
		menu.any{plato => plato.esAptoParaCeliacos()}
	}
	
	method porPandemia(){ // Vende solo pizza por delivery, siendo ahora este su peor plato
		menu = [] 
		self.agregarPlato(pizza) 
	}
}

object mcDelta {
	var clientes = 1500
	
	method clientes() = clientes
	
	method cantidadDeClientes(cantClientes) {
		clientes = cantClientes
	}
	
	method puntaje() {
		return hamburguesa.puntaje() + self.bonusClientes()
	}
	
	method bonusClientes() {
		return 5.min(clientes/1000)
	}
	
	method tieneAlgunPlatoParCeliacos() {
		return hamburguesa.esAptoParaCeliacos()
	}
	
	method porPandemia() {
		clientes -= 500
	}
}

object puestoCallejero {
	var plato = pancho
	
	method puntaje(){
		return pancho.puntaje()
	}
	
	method tieneAlgunPlatoParCeliacos() {
		return plato.esAptoParaCeliacos()
	}
	
	method porPandemia() { // No puede seguir trabajando.
		plato = ninguno
	}
}

/** Chefs **/

object cristof {method especialidad() = ratatouille}

object donato {method especialidad() = tallarines}

object damian { // Punto 6
	const platos = [tallarines, hamburguesa, ratatouille]
	
	method especialidad() {
		return platos.anyOne()
	}
}