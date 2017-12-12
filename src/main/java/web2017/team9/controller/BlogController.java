package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Comment;
import web2017.team9.domain.Member;
import web2017.team9.domain.Message;
import web2017.team9.service.MessageService;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class BlogController {
    @Autowired
    private MessageService messageService;
    @RequestMapping("/foreBlog")
    public ModelAndView foreBlog(Model model){

        List<Message> messages  = messageService.findAllMessage();
        model.addAttribute("messages",messages);
        return new ModelAndView("foreBlog");
    }
    @RequestMapping("/foreBlogMine")
    public ModelAndView foreBlogMine(Model model,HttpSession session){
Member member = (Member) session.getAttribute("member");
        List<Message> messages  = messageService.findMessageByMemId(member.getMemberId());
        model.addAttribute("messages",messages);
        return new ModelAndView("foreBlog");
    }
    @RequestMapping("/foreAddMessageJsp")
    public ModelAndView foreAddMessageJsp(Model model){
        return new ModelAndView("foreAddMessage");
    }
    @RequestMapping("/foreAddMessage")
    public ModelAndView addMessage(Model model, Message message, HttpSession session){

        message.setTime(new Date());

         /*设置member,从session里取出来*/

        message.setMember((Member) session.getAttribute("member"));

        messageService.addMessage(message);
        return new ModelAndView("redirect:foreBlog.html");
    }
    @RequestMapping("/foreSingle")
    public ModelAndView single(Model model,int messageId){
       Message message = messageService.findMessageById(messageId);
        model.addAttribute("message",message);
        System.out.println(message);
        return new ModelAndView("single");
    }
    @RequestMapping("/addComment")
    public ModelAndView addComment(Model model, Comment comment,HttpSession session){
        comment.setTime(new Date());
        /*设置member,从session里取出来*/

        comment.setMember((Member) session.getAttribute("member"));

        messageService.addComment(comment);
        return new ModelAndView("redirect:foreSingle.html?messageId=" + comment.getMessageId());

    }
    @RequestMapping("/backManageMessages")
    public ModelAndView backManageMessage(Model model){
        List<Message> messages = messageService.findAllMessage();
        model.addAttribute("messages",messages);
        return new ModelAndView("backManageMessages");

    }
    @RequestMapping("/backManageComment")
    public ModelAndView backManageComment(Model model,int messageId){
        List<Comment> comments = messageService.findCommentByMid(messageId);
        model.addAttribute("comments",comments);
        return new ModelAndView("backManageComment");

    }
    @RequestMapping("/backDeleteMessages")
    public ModelAndView backDeleteMessages(Model model,int messageId){
        messageService.deleteMessageById(messageId);
        return new ModelAndView("redirect:backManageMessages.html");
    }
    @RequestMapping("/backDeleteComment")
    public ModelAndView backDeleteComment(Model model,int commentId,int messageId){
        messageService.deleteCommentByCid(commentId);
        return new ModelAndView("redirect:backManageComment.html?messageId=" + messageId);
    }

}
