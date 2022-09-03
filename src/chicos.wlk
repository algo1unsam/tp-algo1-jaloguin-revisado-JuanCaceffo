import elementos.*

object macaria {
	var nivelIra= 10
	var property disfraces = [ ]
	var caramelos = 0

	method caramelos(){
		return caramelos
	}
	method capacidadSusto(){
		return nivelIra+disfraces.map({disfraz => disfraz.nivelSusto()}).sum()
	}
	method disfrazar(disfraz){
		self.YaSeEncuentraElDisfrazEnLaLista(disfraz)
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
	//verificaciones
	method YaSeEncuentraElDisfrazEnLaLista(disfraz){
		if (disfraces.contains(disfraz)){
			self.error("macaria ya tiene el disfraz que desas darle¡")
		}
	}
}

object pancracio {
	var cantidadU = 4
	var property disfraces = [mascaraDracula]
	var property caramelos = 0
	
	method capacidadSusto(){
		return cantidadU+disfraces.first().nivelSusto()
	}
	method quitarDisfraz(disfraz){
		cantidadU += 2
	}
	method borrarDisfraz(){
		disfraces.clear()
	}
	method disfrazar(disfraz){
		self.borrarDisfraz()
		disfraces.add(disfraz)
	}
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}
}

// El chico inventado .

object pedro {

}

