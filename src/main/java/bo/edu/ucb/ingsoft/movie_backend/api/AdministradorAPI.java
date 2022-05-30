package bo.edu.ucb.ingsoft.movie_backend.api;

import bo.edu.ucb.ingsoft.movie_backend.bl.AdministradorBl;
import bo.edu.ucb.ingsoft.movie_backend.entities.PeliculasEntity;
import bo.edu.ucb.ingsoft.movie_backend.entities.ReservasEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/administrador")
public class AdministradorAPI {
    private AdministradorBl administradorBl;
    Logger LOGGER = LoggerFactory.getLogger(AdministradorAPI.class);

    public AdministradorAPI(AdministradorBl administradorBl) {
        this.administradorBl = administradorBl;
    }

    @GetMapping("peliculas")
    public ResponseEntity<List<PeliculasEntity>> obtenerPeliculas(){
        LOGGER.info("Metodo obtenerPeliculas desde AdministradoAPI");
        List<PeliculasEntity> listaPeliculas = this.administradorBl.obtenerPeliculas();
        return new ResponseEntity<List<PeliculasEntity>>(listaPeliculas, HttpStatus.OK);
    }

    @GetMapping("peliculas/{idPelicula}")
    public ResponseEntity<PeliculasEntity> obtenerPeliculaPorID(@PathVariable Integer idPelicula){
        PeliculasEntity pelicula = this.administradorBl.obtenerPeliculaPorID(idPelicula);
        return new ResponseEntity<PeliculasEntity>(pelicula, HttpStatus.OK);
    }

    @PostMapping("peliculas")
    public ResponseEntity<String> agregarPeliculas(@RequestBody PeliculasEntity peliculasEntity){
        this.administradorBl.agregarPelicula(peliculasEntity);
        return new ResponseEntity<String>("Pelicula agregada satisfactoriamente.", HttpStatus.OK);
    }

    @PutMapping("peliculas/{idPelicula}")
    public ResponseEntity<String> modificarPeliculas(@PathVariable Integer idPelicula, @RequestBody PeliculasEntity peliculasEntity){
        String respuesta = this.administradorBl.editarPeliculas(peliculasEntity,idPelicula);
        return new ResponseEntity<String>(respuesta, HttpStatus.OK);
    }

    @GetMapping("peliculas/idPickup")
    public void /*ResponseEntity<List<ReservasEntity>>*/ obtenerPickups(@PathVariable Integer idPickup){
        LOGGER.info("Metodo obtenerPickups desde AdministradoAPI");
        //List<ReservasEntity> listaReservas = this.administradorBl.obtenerPeliculas();
        //return new ResponseEntity<List<PeliculasEntity>>(listaPeliculas, HttpStatus.OK);
    }

}
