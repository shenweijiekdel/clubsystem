package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Member;
import web2017.team9.domain.Message;
import web2017.team9.service.MessageService;

import java.util.Date;
import java.util.List;

@Controller
public class BlogController {
    @Autowired
    private MessageService messageService;
    @RequestMapping("/foreBlog")
    public ModelAndView foreBlog(Model model){

        List<Message> messages  = messageService.findAllMessage();
        System.out.println(messages);
        model.addAttribute("messages",messages);
        return new ModelAndView("foreBlog");
    }
    @RequestMapping("/foreAddMessageJsp")
    public ModelAndView foreAddMessageJsp(Model model){
        return new ModelAndView("foreAddMessage");
    }
    @RequestMapping("/foreAddMessage")
    public ModelAndView addMessage(Model model, Message message){
        message.setTime(new Date());
        System.out.println(message);
        Member member = new Member();
        member.setMemberId(0);
        message.setMember(member);
        messageService.addMessage(message);
        return new ModelAndView("foreAddMessage");
    }
}
