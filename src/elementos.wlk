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
	const tamanio = 22
	const multiSusto = 2
	
	method nivelSusto(){
		return tamanio*multiSusto
	}
}

object mascaraPolitico {
	var promesasCampania = 4
	const tamanio = 2
		
	method nivelSusto(){
		return tamanio*promesasCampania
	}
	method prometerTerminarConLaPobresa(){
		promesasCampania += 2
	}
}

