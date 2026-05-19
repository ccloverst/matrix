object morfeo{
    const esElElegido = false
    var vitalidad = 8
    var estado = "Descansado"
    method salta() {
      if (estado == "Descansado"){
        estado = "Cansado"
      } else {
        estado = "Descansado"
    }
    vitalidad -= 1
    }
}