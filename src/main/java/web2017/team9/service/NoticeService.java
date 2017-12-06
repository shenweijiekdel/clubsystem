package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.NoticeDao;
import web2017.team9.domain.Notice;

import java.util.Date;
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
    public void addNotice(Notice notice){
        Date date = new Date();
        notice.setNoticeDate(date);
        noticeDao.addNotice(notice);
    }
    public void updateNoticeActivity(int id){
        noticeDao.updateAllNoticeNotActivity();
        noticeDao.updateNoticeActivity(id);
    }
    public void deleteNotice(int id){
        noticeDao.deleteNotice(id);
    }
    public Notice getNoticeById(int id){
        Notice notice;
        try{
            notice = noticeDao.getNoticeById(id);
        }catch (Exception e){
            notice = null;
        }
        return  notice;
    }

    public void updateNotice(Notice notice)
    {
        Date date = new Date();
        notice.setNoticeDate(date);
        noticeDao.updateNotice(notice);
    }
}
