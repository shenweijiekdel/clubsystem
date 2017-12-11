package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Member;
import web2017.team9.service.MemberService;
import web2017.team9.util.VerifyCode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Think on 2017/11/27.
 */
@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;
    private VerifyCode verifyCode;
    @InitBinder
    public void initBinder(WebDataBinder binder) {

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
    @RequestMapping(value="/foreLogin.html")
    public String loginPage(Model model){

        return "foreLogin";
    }
    @RequestMapping(value = "/loginCheck.html")
    public ModelAndView loginCheck(HttpSession session, String memberName,String password, Model model){

//        boolean isValidMember = memberService.hasMatchMember(memberCommand.getMemberName(),memberCommand.getPassword());

            Member member = memberService.login(memberName,password);
            if (member == null){
                model.addAttribute("msg","用户名或密码错误！");
                return new ModelAndView("foreLogin","error","用户名或密码错误。");
            }
           session.setAttribute("member",member);
            return new ModelAndView("redirect:foreUserInfo.html");

    }
    @RequestMapping("/checkUsername")
    public void checkUsername(Model model, HttpServletResponse response,String username){
        response.setCharacterEncoding("utf-8");
           try {

       if(memberService.getMemberByMemberName(username) == null) {
               response.getWriter().write("");
               return ;
           }
           response.getWriter().write("该用户已经存在");
       return ;
           } catch (IOException e) {
               e.printStackTrace();
       }

    }
    @RequestMapping(value = "/beforeForeRegister.html")
    public ModelAndView beforeForeRegister(HttpServletRequest request){

        return new ModelAndView("foreRegister");
    }
    @RequestMapping(value = "/foreUserInfo.html")
    public ModelAndView beforeForeUserInfo(Model model){

        return new ModelAndView("foreUserInfo");
    }
    @RequestMapping("/changeUserInfo.html")
    public ModelAndView changeUserInfo(Model model,HttpSession session,Member member, @RequestParam MultipartFile head) {


        if (head.isEmpty()){
            memberService.changeUserInfo(member,session);

        }
        else {
            String filename = head.getOriginalFilename();
            System.out.println(filename);
            filename = filename.substring(filename.indexOf('.'));
            String path = this.getClass().getResource("/").getPath();
            path = path.replace("WEB-INF/classes", "images/avatar");
            filename = UUID.randomUUID().toString() + filename;
            member.setAvatar(filename);

            try {
                memberService.changeUserInfo(member, path, filename, head,session);
            } catch (IOException e) {
                e.printStackTrace();
            }
           /* try {
                pictureService.addPhotoByAlbumId( photo,albumId,path,filename);
            } catch (Exception e) {
                e.printStackTrace();
            }*/
        }
            System.out.println("session" + session.getAttribute("member"));

        return new ModelAndView("redirect:/foreUserInfo.html");
    }
    @RequestMapping(value = "/foreRegister.html")
    public ModelAndView foreRegister(HttpServletRequest request,  Member member, Model model){
        memberService.registerMember(member);
        model.addAttribute("member",member);
        return new ModelAndView("foreLogin");
    }

   /* @RequestMapping(value = "registerMemberJsp")
    public ModelAndView registerMemberJsp(){
        return new ModelAndView("foreRegisterbak");
    }*/
}
