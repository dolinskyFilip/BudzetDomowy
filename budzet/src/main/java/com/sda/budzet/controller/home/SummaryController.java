package com.sda.budzet.controller.home;

import com.sda.budzet.db.model.Outgoings;
import com.sda.budzet.service.OutgoingsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SummaryController {
    @Autowired
    private OutgoingsService outgoingsService;

    @RequestMapping(value = "/summary", method = RequestMethod.GET)
    public ModelAndView summaryPage(@RequestParam(name = "error", required = false) String error) {
        ModelAndView modelAndView = new ModelAndView("summary");
        List<Outgoings> outgoings = outgoingsService.getOutgoings();
        modelAndView.addObject("outgoings", outgoings);
        if (error != null) {
            modelAndView.addObject("errorMsg", true);
        }

        return modelAndView;
    }

}
