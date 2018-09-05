object ballesta {
	var property flechas = 10
	
	method estaCargada() {
	   return flechas >0 
	        
	
	}
	
	method potencia(){
		return 4
		
	} 
	    
	method registrarUso(){
		flechas -=1
	}
}

object jabalina {
	var property flechas = 1
	
	method estaCargada (){
	   return flechas > 0 
	        
	
	}
	
	method potencia() {
		return 30
		
	} 
	    
	method registrarUso(){
		flechas-=1
	}
}
