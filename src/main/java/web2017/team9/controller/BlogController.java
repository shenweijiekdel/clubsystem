package web2017.team9.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController {
    @RequestMapping("/foreBlog")
    public ModelAndView foreBlog(Model model){
        return new ModelAndView("foreBlog");
    }
    @RequestMapping("/foreAddMessageJsp")
    public ModelAndView addMessage(Model model){
        return new ModelAndView("foreAddMessage");
    }
}
