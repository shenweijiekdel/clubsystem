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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
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

    @RequestMapping(value = "/foreLogin.html")
    public String loginPage(Model model, HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        Member member = new Member();
        try {
            for (Cookie cookie : cookies
                    ) {
                if ("memberName".equals(cookie.getName())) {

                    member.setMemberName(URLDecoder.decode(cookie.getValue(), "utf-8"));

                }
                if ("password".equals(cookie.getName())) {
                    member.setPassword(URLDecoder.decode(cookie.getValue(),"utf-8"));
                }
            }
            if (member.getMemberName() != null && member.getPassword() != null) {

                model.addAttribute("memberCookie", member);
            }
        }catch (UnsupportedEncodingException e){
            e.printStackTrace();
        }
        return "foreLogin";
    }

    @RequestMapping(value = "/loginCheck.html")
    public ModelAndView loginCheck(HttpSession session, String memberName, String password, @RequestParam(required = false) String cc, Model model, HttpServletResponse response) {

//        boolean isValidMember = memberService.hasMatchMember(memberCommand.getMemberName(),memberCommand.getPassword());

        Member member = memberService.login(memberName, password);
        if (member == null) {
            model.addAttribute("msg", "用户名或密码错误！");
            return new ModelAndView("foreLogin", "error", "用户名或密码错误。");
        }
try {
    Cookie memNamec = new Cookie("memberName", URLEncoder.encode(memberName, "utf-8"));
    Cookie pswdc = new Cookie("password",  URLEncoder.encode(memberName, "utf-8"));
    memNamec.setPath("/");
    pswdc.setPath("/");
    if ("true".equals(cc)) {
        memNamec.setMaxAge(3600 * 24 * 30);
        pswdc.setMaxAge(3600 * 24 * 30);
    } else {
        memNamec.setMaxAge(0);
        pswdc.setMaxAge(0);
    }
    response.addCookie(memNamec);
    response.addCookie(pswdc);
} catch (UnsupportedEncodingException e){
            e.printStackTrace();
}
        session.setAttribute("member", member);
        return new ModelAndView("redirect:foreIndex.html");

    }

    @RequestMapping("/checkUsername")
    public void checkUsername(Model model, HttpServletResponse response, String username) {
        response.setCharacterEncoding("utf-8");
        try {

            if (memberService.getMemberByMemberName(username) == null) {
                response.getWriter().write("");
                return;
            }
            response.getWriter().write("该用户已经存在");
            return;
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping(value = "/beforeForeRegister.html")
    public ModelAndView beforeForeRegister(HttpServletRequest request) {

        return new ModelAndView("foreRegister");
    }

    @RequestMapping(value = "/foreUserInfo.html")
    public ModelAndView beforeForeUserInfo(Model model) {

        return new ModelAndView("foreUserInfo");
    }

    @RequestMapping("/changeUserInfo.html")
    public ModelAndView changeUserInfo(Model model, HttpSession session, Member member, @RequestParam MultipartFile head) {


        if (head.isEmpty()) {
            memberService.changeUserInfo(member, session);

        } else {
            String filename = head.getOriginalFilename();

            filename = filename.substring(filename.indexOf('.'));
            String path = this.getClass().getResource("/").getPath();
            path = path.replace("WEB-INF/classes", "images/avatar");
            filename = UUID.randomUUID().toString() + filename;
            member.setAvatar(filename);

            try {
                memberService.changeUserInfo(member, path, filename, head, session);
            } catch (IOException e) {
                e.printStackTrace();
            }
           /* try {
                pictureService.addPhotoByAlbumId( photo,albumId,path,filename);
            } catch (Exception e) {
                e.printStackTrace();
            }*/
        }
        System.out.println("sessionNumber:" + session.getAttribute("member"));

        return new ModelAndView("redirect:/foreUserInfo.html");
    }

    @RequestMapping(value = "/foreRegister.html")
    public ModelAndView foreRegister(HttpSession session, Member member, Model model) {
        if (memberService.registerMember(member) > 0){
        Member loginMember = memberService.login(member.getMemberName(),member.getPassword());
        session.setAttribute("member",loginMember);
        }
        return new ModelAndView("redirect:/foreIndex.html");
    }
    @RequestMapping(value="/index.html")
    public void memberPage(HttpServletResponse response)throws Exception{

        response.sendRedirect("/manage_member.html");

    }

    @RequestMapping(value = "/add_member1.html")
    public ModelAndView  addmember1(){

        return new ModelAndView ("add_member");
    }//增
    public static boolean notNull(String str){
        if(str!=null&&!str.equals("")){
            return true;
        }else{
            return false;
        }
    }
    @RequestMapping("/add_member")
    public String savemember(Member member,HttpServletRequest request,HttpServletResponse response)throws Exception {
        System.out.println("名字："+member.getMemberName());
        if(notNull(member.getMemberName())&&notNull(member.getPassword())){
            memberService.add(member);
            List<Member> List = memberService.getAllUser();
            request.setAttribute("list",List);
            return "backManageMember";
        }else{
            if(!notNull(member.getMemberName())){
                // System.out.println("111111");
                request.setAttribute("nameerror","<span style='color:red;'>*用户名不能为空</span>");
            }
            if(!notNull(member.getPassword())){
                //System.out.println("22222");
                request.setAttribute("pswderror","<span style='color:red;'>*密码不能为空</span>");
            }
            request.setAttribute("memberinfo",member);
            return "backAddMember";
        }
    }//增


    @RequestMapping(value = "/change_member.html")
    public ModelAndView change_member(Model model,Member Member){
        Member member = memberService.getUserByUserId(Member.getMemberId());
        model.addAttribute("member",member);
        return new ModelAndView("backChangeMemberPassword");
    }

    @RequestMapping(value = "/change_memberpassword.html")
    public void change_memberpassword(Model model,Member member,HttpServletResponse response)throws Exception{

        memberService.changepassword(member);
        List<Member> list = memberService.getAllUser();
        model.addAttribute("list",list);
        //request.setAttribute("List",List);
        //return new ModelAndView("manage_member");
        response.sendRedirect("/manage_member.html");
    }//改

    @RequestMapping(value = "/delete_member.html")
    public void  deletememberSuccess(Member member,Model model,HttpServletResponse response)throws Exception{
        memberService.deletemember(member.getMemberId());
        List<Member> list = memberService.queryinrecord();
        model.addAttribute("list",list);
        //
        response.sendRedirect("/manage_member.html");
        //return new ModelAndView ("manage_member");
    }//删除会员


    @SuppressWarnings("unchecked")
    @RequestMapping(value = "/manage_member.html")
    public ModelAndView  inRecordmember(
            HttpServletRequest request){
        List<Member> list=memberService.queryinrecord();

        request.setAttribute("list",list);
        return new ModelAndView ("backManageMember");
    }//显示会员列表


   /* @RequestMapping(value = "registerMemberJsp")
    public ModelAndView registerMemberJsp(){
        return new ModelAndView("foreRegisterbak");
    }*/
}
