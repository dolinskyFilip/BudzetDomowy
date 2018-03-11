package com.sda.kino.service;

import com.sda.kino.db.model.Cinema;
import com.sda.kino.db.model.Seance;
import com.sda.kino.db.repository.CinemaRepository;
import com.sda.kino.db.repository.SeanceRepository;
import com.sda.kino.dto.SeanceDto;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SeancesService {
    @Resource(name = "cinemaRepositoryJdbc")
    private CinemaRepository cinemaRepository;

    @Resource(name = "seanceRepositoryJdbc")
    private SeanceRepository seanceRepository;

    public List<Cinema> getCinemas(){
        return cinemaRepository.getCinemaList();
    }

    public Map<String, List<SeanceDto>> getSeances(Integer cinemaId){
        List<Seance> seances = seanceRepository.findByIdCinema(cinemaId);
        Map<String, List<SeanceDto>> result = new HashMap();
        for (Seance seance : seances){
            if (!result.containsKey(seance.getMovieName())){
                result.put(seance.getMovieName(), new ArrayList<>());
            }
            result.get(seance.getMovieName()).add(new SeanceDto(seance.getId(), seance.getDateTime()));
        }
        return result;

    }
}
