package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Member;
import web2017.team9.domain.Message;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class MessageDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public int AddMessage(Message message){
        return jdbcTemplate.update("INSERT INTO t_message VALUES (null,?,?,?)",message.getContent(),message.getMember().getMemberId(),message.getTime());
    }

    public List<Message> findAll() {
        try {
            return jdbcTemplate.queryForObject("SELECT * FROM t_message", new RowMapper<List<Message>>() {
                @Override
                public List<Message> mapRow(ResultSet resultSet, int i) throws SQLException {
                    List<Message> messages = new ArrayList<Message>();
                    do {
                        Message message = new Message();
                        Member member = new Member();
                        member.setMemberId(resultSet.getInt(3));
                        message.setMessageId(resultSet.getInt(1));
                        message.setContent(resultSet.getString(2));
                        message.setTime(resultSet.getDate(4));
                        message.setMember(member);
                        messages.add(message);
                    } while (resultSet.next());
                    return messages;
                }
            });
        } catch (EmptyResultDataAccessException e){
            return null;
        }
    }
}
