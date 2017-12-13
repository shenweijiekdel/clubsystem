package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.service.ArrangementService;

/**
 * Created by WSF on 2017/12/13.
 */
@Controller
public class ArrangeController {
    @Autowired
    private ArrangementService arrangementService;

    @RequestMapping(value = "arrangemet")
    public ModelAndView arrangemet() {
return  new ModelAndView("/");
    }
}
