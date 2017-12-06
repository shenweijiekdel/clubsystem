package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Notice;
import web2017.team9.service.NoticeService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by WSF on 2017/12/5.
 */
@Controller
public class NoticeController {
    @Autowired
    private NoticeService noticeService;
    @RequestMapping(value = "/backManageNotices")
    public ModelAndView backManageNotices(Model model){
        List<Notice> noticeList = noticeService.getAllNotice();
        model.addAttribute("noticeList",noticeList);
        return new ModelAndView("backManageNotices");
    }
    @RequestMapping(value = "backAddNoticeJsp")
    public ModelAndView backAddNoticeJsp(){
        return new ModelAndView("backAddNotice");
    }
    @RequestMapping(value = "backAddNotice")
    public ModelAndView backAddNotice(Notice notice,Model model){
        noticeService.addNotice(notice);
        List<Notice> noticeList = noticeService.getAllNotice();
        model.addAttribute("noticeList",noticeList);
        return new ModelAndView("backManageNotices");
    }
    @RequestMapping(value = "backUpdateNoticeActivity")
    public ModelAndView backUpdateNoticeActivity(HttpServletRequest request,Model model){
        int id = Integer.parseInt(request.getParameter("noticeId"));
        noticeService.updateNoticeActivity(id);
        List<Notice> noticeList = noticeService.getAllNotice();
        model.addAttribute("noticeList",noticeList);
        return new ModelAndView("backManageNotices");
    }
    @RequestMapping(value = "backDeleteNotice")
    public ModelAndView backDeleteNotice(HttpServletRequest request,Model model){
        int id = Integer.parseInt(request.getParameter("noticeId"));
        noticeService.deleteNotice(id);
        List<Notice> noticeList = noticeService.getAllNotice();
        model.addAttribute("noticeList",noticeList);
        return new ModelAndView("backManageNotices");
    }
    @RequestMapping(value = "backUpdateNoticeJsp")
    public ModelAndView backUpdateNoticeJsp(Model model,HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("noticeId"));
        Notice notice = noticeService.getNoticeById(id);
        model.addAttribute("notice",notice);
        return new ModelAndView("backUpdateNotice");
    }
    @RequestMapping(value = "backUpdatNotice")
    public ModelAndView backUpdatNotice(Model model,Notice notice){
        noticeService.updateNotice(notice);
        List<Notice> noticeList = noticeService.getAllNotice();
        model.addAttribute("noticeList",noticeList);
        return new ModelAndView("backManageNotices");
    }
}
