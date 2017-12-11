package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.dao.AdminDao;
import web2017.team9.domain.Admin;
import web2017.team9.service.AdminService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Think on 2017/12/9.
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
   @RequestMapping(value = "/adminCheck.html")
    public ModelAndView adminCheck(HttpServletRequest request, Admin admin){
       Boolean isValidAdmin = adminService.hasMatchCount(admin.getAdminName(),admin.getPassword());
       if(!isValidAdmin){
           return new ModelAndView("backLogin","error","用户名或密码错误！");
       }else{
           Admin admin1 = adminService.findAdminByAdminName(admin.getAdminName());
           request.getSession().setAttribute("admin",admin1);
           return new ModelAndView("backIndex");
       }
   }
    @RequestMapping("/foreAdminLogin")
   public ModelAndView toAdminLogin(){
        return new ModelAndView("backLogin");
   }
}
