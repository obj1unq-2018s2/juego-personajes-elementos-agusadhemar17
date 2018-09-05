object luisa {
	var personajeActivo = noHayPersonaje
}


object floki {
	var arma
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var property valorRecolectado = 0
	var ultimoElemento
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElemento= elemento// ... acá hay que agregar una línea ...
	}
	method esFeliz(){
		valorRecolectado >=50 or ultimoElemento.altura() >= 10/*o bien recolectó en total al menos 50 unidades, 
		* o bien el último elemento con el que se encontró mide al menos 10 metros de alto. 
		 * La acción que falta en el método  encontrar(elemento)  
		 * es necesaria para poder evaluar esta segunda condición.
		 */
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}