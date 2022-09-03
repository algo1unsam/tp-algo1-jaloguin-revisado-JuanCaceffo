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
		disfraces.add(disfraz).withoutDuplicates()
	}
	method dejarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}
	method asustarA(adulto){
		caramelos = adulto.serAsustadoPor(self).div(4)
	}
	method disfrazMenosEfecivo(){
		return disfraces.min({disfraz => disfraz.nivelSusto()})
	}
	method dejarDeUsarMenosEfectivo(){
		self.dejarDisfraz(self.disfrazMenosEfecivo())
	}
}

object pancracio {
	var cantidadU = 5
	var property disfraces = mascaraDracula
	var property caramelos = 0
	
	method capacidadSusto(){
		return cantidadU+disfraces.nivelSusto()
	}
	method quitarDisfraz(disfraz){
		cantidadU += 2
	}
	method disfrazar(disfraz){
		disfraces = disfraz
	}
	method recibirCaramelos(cantidad){
		caramelos += cantidad.div(4)
	}
	method asustarA(adulto){
		caramelos = adulto.serAsustadoPor(self)
	}
}

// El chico inventado .

object pedro {

}

