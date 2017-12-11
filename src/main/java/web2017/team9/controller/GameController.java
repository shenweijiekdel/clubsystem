package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.*;
import web2017.team9.service.GameService;
import web2017.team9.service.MemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by WSF on 2017/11/19.
 */
@Controller
public class GameController {

    @Autowired
    private GameService gameService;
    @Autowired
    private MemberService memberService;
    @InitBinder
    public void initBinder(WebDataBinder binder) {

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping("/backIndex")
    public ModelAndView addGamePage(Model model) {
//        List<Game> gameList = gameService.getAllGames();
//        model.addAttribute("gameList",gameList);
//        return new ModelAndView("backManageGames");
      /*  List<Type> typeList = gameService.getAllType();
        List<Member> memberList = memberService.getAllMembers();
        model.addAttribute("typeList",typeList);
        model.addAttribute("memberList",memberList);*/
        return new ModelAndView("backIndex");
    }
    @RequestMapping("/backAddGame")
    public ModelAndView addGame(Model model, Game game,Red red,Blue blue,Type type){
        game.setGameId(UUID.randomUUID().toString());
        red.setRedId(UUID.randomUUID().toString());
        blue.setBlueId(UUID.randomUUID().toString());
        gameService.addGames(game,blue,red,type);
        List<Game> gameList = gameService.getAllGames();
        model.addAttribute("gameList",gameList);
        return new ModelAndView("backManageGames");
    }
    @RequestMapping(value = "/backManageGames")
    public ModelAndView showGames(Model model){
        List<Game> gameList = gameService.getAllGames();
        if (gameList!=null){
            model.addAttribute("gameList",gameList);
            return new ModelAndView("backManageGames");
        }else{
            return new ModelAndView("backManageGames");
        }
    }
    @RequestMapping(value = "/backAddGameJsp")
    public ModelAndView backAddGameJsp(Model model){
        List<Type> typeList = gameService.getAllType();
        List<Member> memberList = memberService.getAllMembers();
        model.addAttribute("memberList",memberList);
        model.addAttribute("typeList",typeList);
        return new ModelAndView("backAddGame");
    }
    @RequestMapping(value = "/backUpdateGamesJsp")
    public ModelAndView backUpdateGamesJsp(Model model,HttpServletRequest request){
        String gameId = request.getParameter("gameId");
        Game game = gameService.getGameByGameId(gameId);
        List<Type> typeList = gameService.getAllType();
        List<Member> memberList = memberService.getAllMembers();
        model.addAttribute("memberList",memberList);
        model.addAttribute("typeList",typeList);
        model.addAttribute("game",game);
        return new ModelAndView("backUpdateGame");
    }
    @RequestMapping(value = "/backupdateGame")
    public ModelAndView backupdateGame(Model model, Game game,Red red,Blue blue,Type type){
        gameService.updateGames(game,blue,red,type);
        List<Game> gameList = gameService.getAllGames();
        model.addAttribute("gameList",gameList);
        return new ModelAndView("backManageGames");
    }
    @RequestMapping(value = "/backDeleteGame")
    public ModelAndView backDeleteGame(HttpServletRequest request,Model model){
        String gameId = request.getParameter("gameId");
        gameService.deleteGameByGameId(gameId);
        List<Game> gameList = gameService.getAllGames();
        if (gameList!=null){
            model.addAttribute("gameList",gameList);
            return new ModelAndView("backManageGames");
        }else{
            return new ModelAndView("backManageGames");
        }
    }
    @RequestMapping(value = "backDetailGames")
    public ModelAndView backDetailGames(Model model,HttpServletRequest request){
        String gameId = request.getParameter("gameId");
        Game game = gameService.getGameByGameId(gameId);
        Member redMember = memberService.getMemberByMemberName(game.getRed().getRedMemberName());
        Member blueMember = memberService.getMemberByMemberName(game.getBlue().getBlueMemberName());
        model.addAttribute("game",game);
        model.addAttribute("redMember",redMember);
        model.addAttribute("blueMember",blueMember);
        return new ModelAndView("backDetailGames");
    }
    @RequestMapping(value = "foreDetailGames")
    public ModelAndView foreDetailGames(Model model,HttpServletRequest request){
        String gameId = request.getParameter("gameId");
        Game game = gameService.getGameByGameId(gameId);
        Member redMember = memberService.getMemberByMemberName(game.getRed().getRedMemberName());
        Member blueMember = memberService.getMemberByMemberName(game.getBlue().getBlueMemberName());
        model.addAttribute("game",game);
        model.addAttribute("redMember",redMember);
        model.addAttribute("blueMember",blueMember);
        return new ModelAndView("foreDetailGame");
    }
    @RequestMapping("/saveRedMemVar")
    public void saveRedMemVar(String name, HttpSession session){
        System.out.println(name);
        session.setAttribute("redName",name);
    }
    @RequestMapping("/saveBlueMemVar")
    public void saveBlueMemVar(String name, HttpSession session){
        System.out.println(name);
        session.setAttribute("BlueName",name);
    }
}
