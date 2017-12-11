package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Coach;
import web2017.team9.service.CoachServise;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by WSF on 2017/12/11.
 */
@Controller
public class CoachController {
    @Autowired
    private CoachServise coachServise;
    @InitBinder
    public void initBinder(WebDataBinder binder) {

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
    @RequestMapping(value = "backManageCoach")
    public ModelAndView backManageCoach(Model model){
        List<Coach> coachList = coachServise.getAllCoach();
        model.addAttribute("coachList",coachList);
        return new ModelAndView("backManageCoach");
    }
    @RequestMapping(value = "backAddCoachJsp")
    public ModelAndView backAddCoachJsp(){
        return  new ModelAndView("backAddCoach");
    }
    @RequestMapping(value = "backAddCoach")
    public ModelAndView backAddCoach(Coach coach,Model model){
        coachServise.addCoach(coach);
        List<Coach> coachList = coachServise.getAllCoach();
        model.addAttribute("coachList",coachList);
        return new ModelAndView("backManageCoach");
    }
    @RequestMapping(value = "backUpdateCoachJsp")
    public ModelAndView backUpdateCoachJsp(Model model, HttpServletRequest request){
        int coachId = Integer.parseInt(request.getParameter("coachId"));
        Coach coach = coachServise.getCoachById(coachId);
        model.addAttribute("coach",coach);
        return  new ModelAndView("backUpdateCoach");
    }
    @RequestMapping(value = "backUpdateCoach")
    public ModelAndView backUpdateCoach(Model model,Coach coach){
        coachServise.updateCoach(coach);
        List<Coach> coachList = coachServise.getAllCoach();
        model.addAttribute("coachList",coachList);
        return new ModelAndView("backManageCoach");
    }
    @RequestMapping(value = "backDeleteCoach")
    public ModelAndView backDeleteCoach(HttpServletRequest request,Model model){
        int coachId = Integer.parseInt(request.getParameter("coachId"));
        coachServise.deleteCoach(coachId);
        List<Coach> coachList = coachServise.getAllCoach();
        model.addAttribute("coachList",coachList);
        return new ModelAndView("backManageCoach");
    }
    @RequestMapping(value = "backUpdateCoachOccupy")
    public ModelAndView backUpdateCoachOccupy(HttpServletRequest request,Model model){
        int coachId = Integer.parseInt(request.getParameter("coachId"));
        boolean isOccupy = Boolean.parseBoolean(request.getParameter("isOccupy"));
        coachServise.updateCoachOccupy(coachId,isOccupy);
        List<Coach> coachList = coachServise.getAllCoach();
        model.addAttribute("coachList",coachList);
        return new ModelAndView("backManageCoach");
    }
    @RequestMapping(value = "backIsOccupyCoach")
    public ModelAndView backIsOccupyCoach(Model model,HttpServletRequest request){
        boolean isOccupy = Boolean.parseBoolean(request.getParameter("isOccupy"));
        List<Coach> coachList = coachServise.getCoachByOccupy(isOccupy);
        model.addAttribute("coachList",coachList);
        return new ModelAndView("backManageCoach");
    }
}
