package com.sda.kino.controller.home;

import com.sda.kino.service.SeancesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SeancesController {

    private static final Integer NO_CINEMA_CHOSEN = -1;

    @Autowired
    private SeancesService seancesService;

    @RequestMapping(value = "/seances")
    public ModelAndView getSeancesPage(@RequestParam(name="cinema", required = false) Integer cinemaId){
        ModelAndView modelAndView = new ModelAndView("seancesList");
        modelAndView.addObject("cinemas", seancesService.getCinemas());
        if (cinemaId != null && cinemaId != NO_CINEMA_CHOSEN){
            modelAndView.addObject("seances", seancesService.getSeances(cinemaId));
        }
        return modelAndView;
    }
}
