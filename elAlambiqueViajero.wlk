
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
        if (destino.puedeManejarElVehiculo())
            self.lugaresVisitados() + 1
            vehiculo.combustible() = vehiculo.combustible() - 10
            recuerdoEnCasa = destino.recuerdo()
    }
}

        //  Vehiculos ============================================================================== Vehiculos //
object alambiqueVeloz {
    var combustible = 100
    method combustible() = combustible

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

// ========================================================================================================== //