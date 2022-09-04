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
		if (tolerancia < ninie.capacidadSusto()){
			caramelos = ninie.capacidadSusto()-tolerancia
		}else{
			caramelos = 0	
		}
		ninie.recibirCaramelos(caramelos)
		tolerancia -= 1
	}
	method caramelosAEntregar(ninie){
		if (tolerancia < ninie.capacidadSusto()){
			return ninie.capacidadSusto()-tolerancia
		}
		return 0
	}

}
