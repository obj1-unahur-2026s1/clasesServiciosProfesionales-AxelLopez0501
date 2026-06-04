class Solicitante {
    method puedeSerAtendido(unProfesional)
}

class Persona inherits Solicitante {
    const provs

    override method puedeSerAtendido(unProfesional) {
        return unProfesional.getProvs().contains(provs)
    }
}

class Institucion inherits Solicitante {
    const unis

    override method puedeSerAtendido(unProfesional) {
        return unis.contains(unProfesional.getUni())
    }
}

class Club inherits Solicitante {
    const provs

    override method puedeSerAtendido(unProfesional) {
        return provs.any({p => unProfesional.getProvs().contains(p)})
    }
}