import rodado.*

class Dependencia{
	
	const flota = #{}
	var property empleados = 0
	
	method agregarAFlota(rodado){flota.add(rodado)}
	
	method quitarDeFlota(rodado){flota.remove(rodado)}
	
	method pesoTotalFlota(){flota.sum({i=>i.peso()})}
	
	method estaBienEquipada(){return flota.size() >= 3 and flota.all({i=>i.velocidadMaxima() >=100})}
	
	method capacidadTotalEnColor(color){return flota.filter({i=>i.color()==color}).sum{i=>i.capacidad()}}
	
	method colorDelRodadoMasRapido(){ return flota.max({i=>i.velocidadMaxima()}).color() }
	
	method capacidadFaltante(){ return empleados - flota.sum({i=>i.capacidad()})  }
	
	method esGrande(){ return empleados >= 40 and flota.size() >= 5  }
	
}
