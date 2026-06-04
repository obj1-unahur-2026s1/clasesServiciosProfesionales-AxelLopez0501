import profesionales.*

class EmpresaDeServicios {
    const honorarioRef
    const listaProf = []

    method contratar(unProfesional) {
        if(!listaProf.contains(unProfesional)) {
            listaProf.add(unProfesional)
        }
        else {
            self.error("Ya está contratado")
        }
    }
    method despedir(unProfesional) {
        if(listaProf.contains(unProfesional)) {
            listaProf.remove(unProfesional)
        }
        else {
            self.error("No está contratado")
        }
    }

    method estudiaronEn(unaUni) {
        return listaProf.filter({p => p.getUni() == unaUni}).size()
    }
    method profesionalesCaros() {
        return listaProf.filter({p => p.getHonorario() > honorarioRef})
    }
    method universidadesFormadoras() {
        const conjUni = listaProf.map({p => p.getUni()})
        return conjUni.asSet()
    }
    method profesionalMasBarato() {
        return listaProf.min({p => p.getHonorario()})
    }
    method esDeGenteAcotada() {
        return listaProf.any({p => p.getProvs().size() > 3})
    }

    // Etapa 2

    method puedeSatisfacer(unSolicitante) {
        return listaProf.any({p => unSolicitante.puedeSerAtendido(p)})
    }
}