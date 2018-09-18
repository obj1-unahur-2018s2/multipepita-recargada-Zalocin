import comidas.*

class Golondrinas {
	
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return self.energia() < 50 }  
	method estaFeliz() { return self.energia().between(500, 1000) }
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)
		} 
	}
}

object prueba {
	
	var juliana = new Golondrinas()
	var enriqueta = new Golondrinas()
	
	method energiaJuliana() {
		return juliana.energia() }
	
	method energiaEnriqueta() {
		return enriqueta.energia() }
		
	method comerJuliana(cosa,gramos) {
		juliana.comer() }

	method comerenriqueta(cosa,gramos) {
		enriqueta.comer() }
		
	method volarJuliana (kms) {
		juliana.volar() }
		
	method volarEnriqueta (kms) {
		enriqueta.volar() }	
		
	method estaDebilJuliana() {
		return juliana.estaDebil()
	}	
	
	method estaDebilEnriqueta() {
		return enriqueta.estaDebil()
	}	
		
	method estaFelizJuliana() {
		return juliana.estaFeliz()
	}	
	
	method estaFelizEnriqueta() {
		return enriqueta.estaFeliz()
	}
	
	method cuantoQuiereVolarJuliana() {
		return juliana.cuantoQuiereVolar()
	}
	
	method cuantoQuiereVolarEnriqueta() {
		return enriqueta.cuantoQuiereVolar()
	}
	
	method haceLoQuequierasJuliana() {
		juliana.haceLoQueQuieras()
	}
	
	method haceLoQuequierasEnriqueta() {
		enriqueta.haceLoQueQuieras()
	}
}
