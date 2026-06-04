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
}

class Universidad {
  const prov
  const honoHora

  method getHonoHora() {
    return honoHora
  }
  method getProv() {
    return prov
  }
}

class ProfesionalVinculado inherits Profesional {
  override method getProvs() {
    return [uni.getProv()]
  }
  override method getHonorario() {
    return uni.getHonoHora()
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
}

class ProfesionalLibre inherits Profesional {
  const provs
  const honoHora

  override method getProvs() {
    return provs
  }
  override method getHonorario() {
    return honoHora
  }
}