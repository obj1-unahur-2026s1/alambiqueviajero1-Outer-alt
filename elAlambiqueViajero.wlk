
object luke {
    var lugaresVisitados = 0
    var vehiculo = alambiqueVeloz
    var recuerdoEnCasa = "nada"

    method lugaresVisitados() = lugaresVisitados
    method recuerdoReciente() = recuerdoEnCasa

    method vehiculoNuevo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }

    method viajar(destino) {
        if (destino.puedeManejarElVehiculo()) {
            lugaresVisitados = lugaresVisitados + 1
            vehiculo.combustible() - 10
            recuerdoEnCasa = destino.recuerdo()
        }
    }
}

        //  Vehiculos ============================================================================== Vehiculos //
object alambiqueVeloz {
    var combustible = 100
    method combustible() = combustible

}

object superChatarraEspecial {
    var combustible = 50
    var municiones = 10
    var cañonCargado = true
    var vecesQueSeUsaElCañon = 0
    method combustible() = combustible  
    method municiones() = municiones
    method cañonCargado() =  cañonCargado
    method vecesQueSeUsaElCañon() = vecesQueSeUsaElCañon
    method municionesCargadas() {
        combustible = municiones / combustible
    }

    method estaCargadoElCañon() {
        if (municiones > 0 && combustible > 0){
            cañonCargado = true
            return true

        }
        else {
            cañonCargado = false
            return false
        }
    }
    
    method usoDelCañon() {
        if (self.estaCargadoElCañon()) {
            municiones -= 1
            vecesQueSeUsaElCañon += 1
        }

    }
}

object laAntiguallaBlindada {
    var combustible = 100
    var velocidadDelVehiculo = self.rapido()
    method velocidadDelVehiculo() = velocidadDelVehiculo
    method combustible() = combustible
    method rapido() = 100
    method lento() = 30 
}

object superConvertible {
    var combustible = 200
    method combustible() = combustible
    method combertibleASuperChatarra() {
        combustible = superChatarraEspecial.combustible()
    }
    method combertibleALaAntiguaBlindada() {
        combustible = laAntiguallaBlindada.combustible()
    }

}

    // ========================================================================================================== //


    //  Destinos ============================================================================== Destinos //
object paris {
    method recuerdo() = "llaveroDeLaTorreEiffel"
    method puedeManejarElVehiculo() = true
}

object buenosAires {
    var property presidenteActual = "Paquito"

    method recuerdo(){ 
        return if (presidenteActual == "Paquito") {
            "mate con yerba"
        }
        else {
            "mate sin yerba"
        }
    }

    method puedeManejarElVehiculo() = false
}

object bagdad {
    var property recuerdo = "Réplica de los míticos jardines colgantes de Babilonia"

}

object lasVegas {
    var property homenaje = paris
    method recuerdo() = homenaje.recuerdo()
    method puedeManejarElVehiculo() = homenaje.puedeManejarElVehiculo()
}


object chaco {
    var property homenaje = "chaqueño"
    method recuerdo() = homenaje
    method puedeManejarElVehiculo() = true
}
// ========================================================================================================== //