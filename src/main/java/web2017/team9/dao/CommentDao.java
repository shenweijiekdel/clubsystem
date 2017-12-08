package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Comment;
import web2017.team9.domain.Member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class CommentDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int addComment(Comment comment) {
        return jdbcTemplate.update("INSERT INTO t_comment VALUES (null,?,?,?,?)",comment.getContent(),comment.getMember().getMemberId(),comment.getTime(),comment.getMessageId());
    }

    public List<Comment> findCommentByMid(int messageId) {
        try {
            return jdbcTemplate.queryForObject("SELECT * FROM t_comment WHERE message_id=?", new RowMapper<List<Comment>>() {
                @Override
                public List<Comment> mapRow(ResultSet resultSet, int i) throws SQLException {
                    List<Comment> comments = new ArrayList<Comment>();
                    do {
                        Comment comment = new Comment();
                        comment.setCommentId(resultSet.getInt(1));
                        comment.setContent(resultSet.getString(2));
                        Member member = new Member();
                        member.setMemberId(resultSet.getInt(3));
                        comment.setMember(member);
                        comment.setTime(resultSet.getDate(4));
                        comment.setMessageId(resultSet.getInt(5));

                        comments.add(comment);
                    } while (resultSet.next());
                    return comments;
                }
            }, messageId);
        }catch (EmptyResultDataAccessException e){
            return null;
        }
    }

    public int deleteByMid(int messageId) {
        return jdbcTemplate.update("DELETE FROM t_comment WHERE message_id=?",messageId);
    }

    public int deleteById(int commentId) {
        return jdbcTemplate.update("DELETE FROM t_comment WHERE comment_id=?",commentId);
    }
}
