class Profesional {
  const uni
  
  method getUni() {
    if(self.getProvs().contains(uni.getProv())) {
      return uni
    }
    else {
      self.error("La universidad está mal asignada")
    }
  }
  method getHonorario()
  method getProvs()
  method cobrar(unImporte)
}

class ProfesionalVinculado inherits Profesional {
  override method getProvs() {
    return [uni.getProv()]
  }
  override method getHonorario() {
    return uni.getHonoHora()
  }
  override method cobrar(unImporte) {
    uni.getDonacion(unImporte / 2)
  }
}

class ProfesionalDelLitoral inherits Profesional {
  const provs = ["Entre Rios", "Santa fe", "Corrientes"]
  const honoHora = 3000
  override method getProvs() {
    return provs
  }
  override method getHonorario() {
    return honoHora
  }
  override method cobrar(unImporte) {
    apl.recibirDinero(unImporte)
  }
}

class ProfesionalLibre inherits Profesional {
  const provs
  const honoHora
  var dinero = 0

  override method getProvs() {
    return provs
  }
  override method getHonorario() {
    return honoHora
  }

  override method cobrar(unImporte) {
    dinero += unImporte
  }
  method transferir(unProfesional,unImporte) {
    if(unImporte <= dinero && unImporte > 0) {
      unProfesional.cobrar(unImporte)
    }
    else {
      self.error("Ingrese un monto valido")
    }
  }
}

class Universidad {
  const prov
  const honoHora
  var donaciones = 0

  method getHonoHora() {
    return honoHora
  }
  method getProv() {
    return prov
  }

  method getDonacion(unImporte) {
    donaciones += unImporte
  }
}

object apl {
    var monto = 0

    method recibirDinero(unImporte) {
      monto += unImporte
    }
}