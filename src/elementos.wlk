object castillo {
	var nivelDefensa = 150
	
	method altura() {
		return 20
	}
	
	method nivelDefensa() {
		return nivelDefensa
	}
	
	method recibirAtaque(unValor) {
		nivelDefensa -= 0.max(nivelDefensa - unValor) 
	}
	
	method valor() {
		return niveDefensa / 5 
	}
	
	method recibirTrabajo() {
		nivelDefensa = 200.min(nivelDefensa + 20)
	}
}

object aurora {
	var estaViva = true
	
	method altura() {
		return 1
	}
	
	method estaViva() {
		return estaViva
	}
	
	method recibirAtaque(unValor) {
		estaViva = not.unValor >= 10
	}
	
	method valor() {
		return 15
	}
	
	method recibirTrabajo() {
		
	}
}

object tipa {
	var altura = 8
	
	method altura() {
		return altura
	}
	
	method recibirAtaque(unValor) {}
	
	method valor() {
		return altura * 2
	}
	
	method recibirTrabajo() {
		altura += 1
	}
}
