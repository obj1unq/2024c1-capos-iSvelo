import castillo.*

object rolando {

	var capacidad = 2
	const property artefactos = #{}
	var hogar = castilloDePiedra
	const historialDeArtefactos = []
	
	
	method levanta(artefacto) {
		if (self.puedeAgregar()) {
			artefactos.add(artefacto)
		}
		historialDeArtefactos.add(artefacto)
	}

	method puedeAgregar() {
		return artefactos.size() < capacidad
	}

	method irAlHogar() {
		self.guardarArtefactosEnHogar()
		self.liberarEspacio()
	}

	method guardarArtefactosEnHogar() {
		hogar.guardarTodosLosArtefactos(artefactos)
	}

	method liberarEspacio() {
		artefactos.clear()
	}

	method posee(artefacto) {
		return self.todasLasPoseciones().contains(artefacto)
	}

	method todasLasPoseciones() {
		return artefactos.union(hogar.cofre())
	}

}

object espadaDelDestino {

}

object libroDeHechizos {

}

object collarDivino {

}

object armaduraDeAceroValyrio {

}

