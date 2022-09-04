object trajeDeBruja {
	
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 2
	const multiSusto = 5
	
	method nivelSusto(){
		return longitud*multiSusto
	}
	method agregarPelos(cantPelos){
		longitud += cantPelos
	}
	method perderPelos(){
		longitud -= 1
	}
}

object mascaraDracula {
	const tamanio = 2
	const multiSusto = 2
	
	method nivelSusto(){
		return tamanio*multiSusto
	}

}

object mascaraFrankenstein {
	//el tamaño era 22? o el nivelDeSusto, ya que si fuese 22 el tamaño no pasaria algunos test
	//dejo el tamaño en 11 para mantener la consigna con respecto a las mascaras
	const tamanio = 11
	const multiSusto = 2
	
	method nivelSusto(){
		return tamanio*multiSusto
	}
}

object mascaraPolitico {
	var promesasCampania = 10
		
	method nivelSusto(){
		return promesasCampania
	}
	method prometerTerminarConLaPobresa(){
		promesasCampania += 1
	}
}

