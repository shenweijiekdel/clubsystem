package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Notice;
import web2017.team9.service.NoticeService;

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
}
