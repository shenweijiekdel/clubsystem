package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.NoticeDao;
import web2017.team9.domain.Notice;

import java.util.List;

/**
 * Created by WSF on 2017/12/5.
 */
@Service
public class NoticeService {
    @Autowired
    private NoticeDao noticeDao;
    public List<Notice> getAllNotice(){
        List<Notice> noticeList = noticeDao.getAllNotice();
        return noticeList;
    }
}
