import elementos.*

object macaria {
	var nivelIra= 10
	var property disfraces = [ ]
	var caramelos = 0
	
	method enojarse(){
		nivelIra += 1 
	}
	method caramelos(){
		return caramelos
	}
	method capacidadSusto(){
		return nivelIra+disfraces.map({disfraz => disfraz.nivelSusto()}).sum()
	}
	method disfrazar(disfraz){
		validaciones.YaSeEncuentraElDisfrazEnLaLista(disfraz, self)
		disfraces.add(disfraz)
	}
	method dejarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method recibirCaramelos(cantidad){
		caramelos += cantidad.div(4/3)
	}
	method disfrazMenosEfecivo(){
		return disfraces.min({disfraz => disfraz.nivelSusto()})
	}
	method dejarDeUsarMenosEfectivo(){
		self.dejarDisfraz(self.disfrazMenosEfecivo())
	}
}

object pancracio {
	var cantidadU = 4
	var property disfraces = [mascaraDracula]
	var property caramelos = 0
	
	method capacidadSusto(){
		return cantidadU+disfraces.uniqueElement().nivelSusto()
	}
	method quitarDisfraz(disfraz){
		cantidadU += 2
	}
	method dejarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method disfrazar(disfraz){
		self.dejarDisfraz(self.disfraces().first())
		disfraces.add(disfraz)
	}
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}
}

// El chico inventado .

object pedro {
	var property disfraces = []
	var property caramelos = 0
	method capacidadSusto(){
		return disfraces.map({disfraz => disfraz.nivelSusto()}).sum()
	}	
	method disfrazar(disfraz){
		validaciones.YaSeEncuentraElDisfrazEnLaLista(disfraz, self)
		disfraces.add(disfraz)
	}
	method dejarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
}
object validaciones{
	
	method YaSeEncuentraElDisfrazEnLaLista(disfraz, ninie){
		if (ninie.disfraces().contains(disfraz)){
			self.error("ya tiene el disfraz que desas darle¡")
		}
	}
}


