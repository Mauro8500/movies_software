package bo.edu.ucb.ingsoft.movie_backend.bl;

import bo.edu.ucb.ingsoft.movie_backend.dao.ReservasRepository;
import bo.edu.ucb.ingsoft.movie_backend.entities.PeliculasEntity;
import bo.edu.ucb.ingsoft.movie_backend.entities.ReservasEntity;

import java.util.List;

public class ReservasBl {
    private ReservasRepository reservasRepository;

    public ReservasBl(ReservasRepository reservasRepository) {
        this.reservasRepository = reservasRepository;
    }

    public void agregarReserva(ReservasEntity reservasEntity) {
        this.reservasRepository.save(reservasEntity);
    }

    public List<ReservasEntity> obtenerPickups(Integer idPickups) {
        return this.reservasRepository.obtenerPickups(idPickups);
    }

}
