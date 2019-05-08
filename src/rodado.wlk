class Rodado {
	
	var capacidad = 0
	var velocidad = 0 
	var peso = 0
	var property color
	var property tieneGas = false
	
	method capacidad (unValor){
		capacidad = unValor
	}
	
	method capacidad(){ return if (tieneGas){capacidad -1} else{capacidad}}

	method velocidad (unValor){
		velocidad = unValor
	}
	
	method velocidad(){ return if (tieneGas){velocidad - 10} else{velocidad}}	
	
	method peso (unValor){
		peso = unValor
	}
	
	method peso(){ return if (tieneGas){peso + 150} else{peso}}
}