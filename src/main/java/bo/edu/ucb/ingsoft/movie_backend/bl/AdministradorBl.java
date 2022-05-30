package bo.edu.ucb.ingsoft.movie_backend.bl;

import bo.edu.ucb.ingsoft.movie_backend.dao.PeliculasRepository;
import bo.edu.ucb.ingsoft.movie_backend.entities.PeliculasEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdministradorBl {
    private PeliculasRepository peliculasRepository;


    public AdministradorBl(PeliculasRepository peliculasRepository) {
        this.peliculasRepository = peliculasRepository;
    }

    public void agregarPelicula(PeliculasEntity peliculasEntity) {
        this.peliculasRepository.save(peliculasEntity);
    }

    public List<PeliculasEntity> obtenerPeliculas() {
        return this.peliculasRepository.findAll();
    }

    public String editarPeliculas(PeliculasEntity peliculasEntity,Integer id) {
        return this.peliculasRepository.findById(id).map(pelicula -> {
          pelicula.setNombre(peliculasEntity.getNombre());
          pelicula.setDescripcion(peliculasEntity.getDescripcion());
          pelicula.setPrecio(peliculasEntity.getPrecio());
          pelicula.setDisponibilidad(peliculasEntity.getDisponibilidad());

          peliculasRepository.save(pelicula);

          return "La pelicula ha sido actualizada.";
        }).orElseGet(() -> {
            return "La pelicula con id "+id+" no existe.";
        });
    }


    public PeliculasEntity obtenerPeliculaPorID(Integer id) {
        return this.peliculasRepository.peliculaPorID(id);
    }
}
