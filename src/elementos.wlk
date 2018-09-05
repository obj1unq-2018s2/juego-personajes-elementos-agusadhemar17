import armas.*

object castillo {//El  castillo  mide 20 metros, Además: debemos manejar el nivel de defensa del  castillo  
//(un valor numérico que arranca en 150), 
	var nivel = 150
	const altura
	method altura (){
		return altura
	}
	
	method nivelDefensa(){
		return nivel
	}
	
	method valorQueOtorga(){//•El  castillo  otorga como valor el 20% de su defensa (o sea, su defensa / 5). 
		return nivel / 5

 	}
	 
	method recibirTrabajo(){ //Al recibir un trabajo, aumenta su defensa en 20, hasta un tope de 200. O sea, si tiene 192 no pasa a 212, queda en 200 (atención acá: se puede usar  min ).
	 	nivel= (nivel += 20).min(200)
	 	
	}
	
	method recibirAtaque(x){
		nivel -= x
			
	}// El  castillo  disminuye su nivel de defensa en la potencia del ataque (p.ej. si recibe un ataque de 30, disminuye el nivel de defensa en 30).
//•  aurora  muere si la potencia del ataque es 10 o más; si no, no le pasa nada.

	
}

object aurora {  // si  aurora  está viva o no (nace viva).//aurora  mide 1 metro, 
	var property viva = true
	
	method altura (){
		return 1
	}
	method valorQueOtorga(){//aurora  otorga como valor 15 unidades.
		return 15
	}
	 
	method recibirTrabajo(){
	 	//Al recibir un trabajo, no le pasa nada.
	}
	
	method recibirAtaque(x){
		if (x>=10){
			viva = false
		}
	}
	
}

object tipa {//la  tipa  arranca en 8 metros pero puede crecer (ya veremos cómo).
	var metros = 8
	
	method altura (){
		return metros
	}
	
	method valorQueOtorga(){
		return metros * 2
	}
	 //La  tipa  otorga como valor el doble de su altura. 
	method recibirTrabajo(){//Al recibir un trabajo, su altura crece en un metro (porque se supone que la riegan y le dan nitratos, ponele).
		 metros += 1
	 	
	}
	
	method recibirAtaque(){
		//•a  tipa  no le pasa nada.
	}
}


