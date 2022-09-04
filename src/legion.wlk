import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]

	
		
	method caramelos(){
		return integrantes.map({ninie => ninie.caramelos()}).sum()
	}
	method capacidadSusto(){
		return integrantes.map({ninie => ninie.capacidadSusto()}).sum()
	}
	method agregarIntegrantes(ninies){
		integrantes.addAll(ninies)
	}
	method lider(){
		return integrantes.max({ninies => ninies.capacidadSusto()})
	}
	method recibirCaramelos(cantidad){
		self.lider().recibirCaramelos(cantidad)
	}
	method normaSinRepetidos(){
		self.quitarALosIntegrantesDisfracesRepetidos()
	}
	method quitarALosIntegrantesDisfracesRepetidos(){
		integrantes.forEach({ninie => ninie.dejarDisfraz(self.disfracesRepetidos().first())})
	}
	method disfracesRepetidos(){
		return (self.todosLosDisfraces().filter({disfraz => self.todosLosDisfraces().occurrencesOf(disfraz) > 1})).withoutDuplicates()
	}
	method todosLosDisfraces(){
		return integrantes.map({ninie => ninie.disfraces()}).flatten()
	}
}
object barrio{
	var chicos = []
	
	method chicos(ninies){
		chicos += ninies
		chicos = chicos.withoutDuplicates()
	}
	method chicosOrdenadosMayorAMenorEnCaramelos(){
		return chicos.sortedBy({a,b => a.caramelos() > b.caramelos()})
	}
	method chicosConMasCaramelos(losNninies){
		return self.chicosOrdenadosMayorAMenorEnCaramelos().take(losNninies) 
	}
	method algunoMuyAsustador(){
		return chicos.any({ninie => ninie.capacidadSusto() > 42})
	}
}

