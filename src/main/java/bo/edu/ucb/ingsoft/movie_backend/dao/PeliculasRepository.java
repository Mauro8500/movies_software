package bo.edu.ucb.ingsoft.movie_backend.dao;

import bo.edu.ucb.ingsoft.movie_backend.entities.PeliculasEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PeliculasRepository extends JpaRepository<PeliculasEntity,Integer> {

    @Query(
            value = "SELECT p \n" +
                    "FROM PeliculasEntity p\n" +
                    "WHERE p.idpeli = ?1"
    )
    public PeliculasEntity peliculaPorID(int idPelicula);
}