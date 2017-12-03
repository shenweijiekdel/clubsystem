package web2017.team9.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class PictureController {
    @RequestMapping("/backManagePictures")
    public ModelAndView  displayPicture(Model model){
        return new ModelAndView("backManagePictures");
    }
}
