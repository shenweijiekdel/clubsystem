package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Notice;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by WSF on 2017/12/5.
 */
@Repository
public class NoticeDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public Notice getNoticeById(int id){
        final Notice notice = new Notice();
        String sql = "select * from t_notice where notice_id=?";
        Object[] args = new Object[]{id};
        RowCallbackHandler rowCallbackHandler = new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                notice.setNoticeId(resultSet.getInt("notice_id"));
                notice.setNoticeDate(resultSet.getDate("notice_date"));
                notice.setNoticeContent(resultSet.getString("notice_content"));
                notice.setNoticeTitle(resultSet.getString("notice_title"));
                notice.setActivity(resultSet.getBoolean("is_activity"));
            }
        };
        jdbcTemplate.query(sql,args,rowCallbackHandler);
        return notice;
    }
    public void addNotice(Notice notice){
        String sql = "insert into t_notice(notice_date,notice_content,notice_title) values(?,?,?)";
        Object[] args = new Object[]{notice.getNoticeDate(),notice.getNoticeContent(),notice.getNoticeTitle()};
        jdbcTemplate.update(sql,args);
    }
    public void updateNotice(Notice notice){
        String sql = "update t_notice set notice_date=?,notice_content=?,notice_title=? where notice_id=?";
        Object[] args = new Object[]{notice.getNoticeDate(),notice.getNoticeContent(),notice.getNoticeTitle(),notice.getNoticeId()};
        jdbcTemplate.update(sql,args);
    }
    public void deleteNotice(int id){
        String sql = "delete from t_notice where notice_id=?";
        Object[] args = new Object[]{id};
        jdbcTemplate.update(sql,args);
    }
    public void updateNoticeActivity(int id){
        String sql = "update t_notice set is_activity=true where notice_id=?";
        Object[] args = new Object[]{id};
        jdbcTemplate.update(sql,args);
    }
    public void updateAllNoticeNotActivity(){
        String sql = "update t_notice set is_activity=false";
        jdbcTemplate.update(sql);
    }
    public List<Notice> getAllNotice(){
        String sql = "select * from t_notice";
        final List<Notice> noticeList = new ArrayList<Notice>();
        RowMapper<List<Notice>> rowMapper = new RowMapper<List<Notice>>() {
            @Override
            public List<Notice> mapRow(ResultSet resultSet, int i) throws SQLException {

                do {
                    Notice notice = new Notice();
                    notice.setNoticeId(resultSet.getInt("notice_id"));
                    notice.setNoticeDate(resultSet.getDate("notice_date"));
                    notice.setNoticeContent(resultSet.getString("notice_content"));
                    notice.setActivity(resultSet.getBoolean("is_activity"));
                    notice.setNoticeTitle(resultSet.getString("notice_title"));
                    noticeList.add(notice);
                }while (resultSet.next());
                return noticeList;
            }
        };
        return jdbcTemplate.queryForObject(sql,rowMapper);
    }

    public List<Notice> getNoticeActivityed() {
        return jdbcTemplate.queryForObject("select * from t_notice where is_activity=true", new RowMapper<List<Notice>>() {
            @Override
            public List<Notice> mapRow(ResultSet resultSet, int i) throws SQLException {
                List<Notice> list = new ArrayList<Notice>();
                do {
                    Notice notice = new Notice();
                    notice.setNoticeId(resultSet.getInt("notice_id"));
                    notice.setNoticeDate(resultSet.getDate("notice_date"));
                    notice.setNoticeContent(resultSet.getString("notice_content"));
                    notice.setActivity(resultSet.getBoolean("is_activity"));
                    notice.setNoticeTitle(resultSet.getString("notice_title"));
                    list.add(notice);
                }while (resultSet.next());
                return list;
            }
        });
    }
}
