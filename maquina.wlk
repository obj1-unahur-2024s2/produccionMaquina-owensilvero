object maquina {

  const produccion = []

  method agregarProduccion(unElemento){
    produccion.add(unElemento)
  }

  method agregarProducciones(unaLista){
    produccion.addAll(unaLista)
  }

  method algunDiaSeProdujo(cantidad)= produccion.contains(cantidad)

  method maximoValorDeProduccion()= produccion.max()

  method valoresDeProduccionPares(){
    return produccion.filter( {x => x.even()} )
  }

  method produccionEsAcotada(n1,n2){
    return produccion.all( {x => x.between(n1, n2)} )
  }

  method produccionesSuperioresA(cuanto){
    return produccion.filter( {x => x > cuanto} )
  }

  method produccionesSumando(n){
    return produccion.map( {x => x+n} )
  }

  method totalProducido()= produccion.sum()

  method ultimoValorDeProduccion()= produccion.last()

  method cantidadProduccionesMayorALaPrimera(){
    return produccion.count( {x => x > produccion.first()} )
  }



}