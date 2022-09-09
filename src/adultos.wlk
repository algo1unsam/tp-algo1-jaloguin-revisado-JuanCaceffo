import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22
	
	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(ninie){
		ninie.recibirCaramelos(self.caramelosAEntregar(ninie))
		tolerancia -= 1
	}
	method caramelosAEntregar(ninie){
		return (ninie.capacidadSusto()-tolerancia).max(0)
	}
}