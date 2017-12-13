package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Coach;
import web2017.team9.domain.Game;
import web2017.team9.domain.Notice;
import web2017.team9.service.CoachServise;
import web2017.team9.service.GameService;
import web2017.team9.service.NoticeService;

import java.util.List;

/**
 * Created by Think on 2017/11/27.
 */
@Controller
public class HomeController {
    @Autowired
    private GameService gameService;
    @Autowired
    private NoticeService noticeService;
    @Autowired
    private CoachServise coachServise;
    @RequestMapping("/foreIndex")
    public ModelAndView toIndex(Model model){
        List<Game> gameList = gameService.getAllGames();
            model.addAttribute("gameList",gameList);
            List<Notice> notices = noticeService.getNoticeActivitied();
            model.addAttribute("notices",notices);
            List<Coach> coachList = coachServise.getCoachByOccupy(false);
            model.addAttribute("coachList",coachList);
            return new ModelAndView("foreIndex");

    }
}
