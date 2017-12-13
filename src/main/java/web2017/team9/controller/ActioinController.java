package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import web2017.team9.domain.Member;
import web2017.team9.service.MemberService;

import java.util.List;

@Controller
public class ActioinController {
    @Autowired
    private MemberService memberService;
    @RequestMapping("/getMemberByType")
    @ResponseBody
    public List<Member> a(String type){
        List<Member> members = memberService.getMemberByType(type);
        return members;
    }
}
