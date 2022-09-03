import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22
	var caramelos = 0
	
	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(ninie){
		tolerancia -= 1
		if (tolerancia < ninie.capacidadSusto()){
			caramelos = ninie.capacidadSusto()-tolerancia
		}
		caramelos = 0
		ninie.recibirCaramelos(caramelos)
	}
	method caramelosAEntregar(ninie){
		if (tolerancia < ninie.capacidadSusto()){
			return ninie.capacidadSusto()-tolerancia
		}
		return 0
	}

}
