class Corsa {
	
	var property color
	
	method capacidad (){return 4 }
	
	method velocidadMaxima(){ return 150 }
	
	method peso (){	return 1300}
}

class Kwid {
	
	var property tanqueAdicional = false
	const color = "azul"
	
	method capacidad (){ return if (not tanqueAdicional){4}else{3}} 
	
	method velocidadMaxima(){ return if (not tanqueAdicional){110}else{120} }
	
	method peso (){	return if(not tanqueAdicional){1200}else{1350}}
	
	method color(){return color}
}


object trafic{
	
	var property interior = interiorComodo
	
	var property motor = motorPulenta
	
	const color = "blanco"
	
	const pesoBase = 4000
	
	method capacidad (){return interior.capacidad()}
		
	method velocidadMaxima(){return motor.velocidadMaxima()}
	
	method peso(){return pesoBase + interior.peso() + motor.peso()}
	
	method color(){return color}
}


object motorPulenta{
	method velocidadMaxima() = 130
	method peso() = 800
}

object motorBataton{
	method velocidadMaxima() = 80
	method peso() = 500	
	
}

object interiorPopular{
	method capacidad() = 12
	method peso() = 1000	
}

object interiorComodo{
	method capacidad() = 5
	method peso() = 700	
}


class AutoEspecial{
	var property capacidad = 0
	var property velocidadMaxima = 0
	var property peso = 0
	var property color = 0
}






