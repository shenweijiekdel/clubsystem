package web2017.team9.controller;

import com.sun.deploy.net.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import web2017.team9.util.VerifyCode;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/verifyCode/")
public class VerifCodeController {
    private VerifyCode verifyCode;
    public VerifCodeController() {
        verifyCode = new VerifyCode();
    }

    @RequestMapping("freshCode")
    @ResponseBody
    public void freshCode(Model model, HttpServletResponse response, HttpSession session) throws IOException {
        response.setDateHeader("Expires", -1);
        response.setHeader("Cache-Control", "no-cache");
        String code = verifyCode.drawImage(response.getOutputStream());
        session.setAttribute("code",code);
        System.out.println(code);
    }
    @RequestMapping(value = "validate")


    public void validate(HttpServletResponse response,Model model, HttpSession session,String code) {
        response.setCharacterEncoding("utf-8");
        System.out.println(code);
        try {
       if (!code.toLowerCase().equals(((String) session.getAttribute("code")).toLowerCase())){

               response.getWriter().write("验证码错误");
           }
           response.getWriter().write("");
           } catch (IOException e) {
               e.printStackTrace();
       }


    }
}
