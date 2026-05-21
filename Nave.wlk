import Neo.*
import Morfeo.*
import Tryni.*
object nave {
  const pasajeros = [neo,morfeo,tryni]
  method cantidadPasajeros() = pasajeros.size() 
  method pasajeroMaxVit() {
   return pasajeros.max({pasajero => pasajero.vit()}) 
  }
  method vitMax() =  self.pasajeroMaxVit().vit()
  method subePasajero(unaPersona){
    pasajeros.add(unaPersona)
  }
  method bajaPasajero(unaPersona){
    pasajeros.remove(unaPersona)
  }
  method pasajeros() = pasajeros
  method pasajeroMinVit(){
    return pasajeros.min({pasajero => pasajero.vit()})
  }
  method vitMin() =  self.pasajeroMinVit().vit()
  method estaEquilibrada() =  (self.vitMin()*2 > self.vitMax())
  method elegidoEstaAbordo() = pasajeros.any({pasaj => (pasaj.esElElegido())})
  
}