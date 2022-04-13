import elementos.*
import armas.*


object luisa {
	var personajeActivo
	
	method personajeActivo(personaje) {
		personajeActivo = personaje
	}
	
	method personajeActual() = personajeActivo
	
	method encontrarElemento(elemento) {}
	
	method aparece(elemento) {
		personajeActivo.encontrarElemento(elemento)
	}
	
}


object floki {
	var arma = ballesta
	
	
	method encontrarElemento(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.nivelPotencia())
			arma.usar()
		}
	}
	
	
	method cambiarArma(unArma) {
		arma = unArma
	}
	
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado 
	
	method encontrarElemento(elemento) {
		ultimoElementoEncontrado = elemento
		valorRecolectado += elemento.valor()
		elemento.recibirTrabajo()
		
	}
	
	method valorRecolectado(){
		return valorRecolectado
	}
	
	method esFeliz() {
		return valorRecolectado >= 50 or ultimoElementoEncontrado.altura >= 10 
	}
	
}

