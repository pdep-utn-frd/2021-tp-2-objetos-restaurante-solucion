import platos.*
import concurso.*

/** Casas de comidas **/

object finoli {
	const chefsContratados = [cristof, donato]
	var chefPrincipal = cristof
	var platoDelDia = chefPrincipal.especialidad()
	const valoraciones = [4,2]
	
	method contratar(nuevoChef) {
		chefsContratados.add(nuevoChef)
	}
	
	method cambiarChefPrincipal(chef) {
		chefPrincipal = chef
		platoDelDia = chefPrincipal.especialidad()
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
	
	method tieneAlgunPlatoParaCeliacos() {
		return platoDelDia.esAptoParaCeliacos()
	}
	
	method platoDelDia() {
		return platoDelDia
	}
	
	method porPandemia() { 
		// Finoli cierra sus puertas y no puede hacer delivery por un caso positivo
		// En consecuencia pierde todas su valoraciones.
		valoraciones.clear()
		self.agregarValoracion(1) // para probar test
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
	
	method tieneAlgunPlatoParaCeliacos() {
		return menu.any{plato => plato.esAptoParaCeliacos()}
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
	
	method tieneAlgunPlatoParaCeliacos() {
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
	
	method tieneAlgunPlatoParaCeliacos() {
		return plato.esAptoParaCeliacos()
	}
	
	method porPandemia() { // No puede seguir trabajando.
		plato = ninguno // Creo un objeto "ninguno" para que todo siga funcionando.
	}
}

/** Chefs **/

object cristof {method especialidad() = ratatouille}

object donato {method especialidad() = tallarines}

object damian { // Chef extra - punto 6
	const platos = [tallarines, hamburguesa, ratatouille]
	
	method especialidad() {
		return platos.anyOne() // Toma como especialidad algun plato de la lista de forma aleatoria.
	}
}