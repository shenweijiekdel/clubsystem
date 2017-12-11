package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import web2017.team9.dao.CommentDao;
import web2017.team9.dao.MemberDao;
import web2017.team9.dao.MessageDao;
import web2017.team9.domain.Comment;
import web2017.team9.domain.Message;

import java.util.List;

@Service
public class MessageService {
    @Autowired
    private MessageDao messageDao;
    @Autowired
    private CommentDao commentDao;
    @Autowired
    private MemberDao memberDao;
    public int addMessage(Message message) {
        return messageDao.AddMessage(message);
    }
@Transactional
    public List<Message> findAllMessage() {
        List<Message> messages = messageDao.findAll();
        if(messages != null)
        for (Message msg:messages
             ) {
            msg.setCommentList(findCommentByMid(msg.getMessageId()));
            msg.setMember(memberDao.getMemberByMemberId(msg.getMember().getMemberId()));
        }
        return messages;
    }

    public Message findMessageById(int messageId) {
        Message message =  messageDao.findMessageById(messageId);
        List<Comment> comments = findCommentByMid(messageId);
        message.setCommentList(comments);
        message.setMember(memberDao.getMemberByMemberId(message.getMember().getMemberId()));
        return message;
    }

    public int addComment(Comment comment) {
        return commentDao.addComment(comment);
    }

    public List<Comment> findCommentByMid(int messageId) {
        List<Comment> comments = commentDao.findCommentByMid(messageId);
        if (comments != null)
        for (Comment cmt:comments
             ) {
            cmt.setMember(memberDao.getMemberByMemberId(cmt.getMember().getMemberId()));
        }
        return comments;
    }
@Transactional
    public int deleteMessageById(int messageId) {

        return  messageDao.deleteById(messageId) + commentDao.deleteByMid(messageId);
    }


    public int deleteCommentByCid(int commentId) {
        return commentDao.deleteById(commentId);
    }
}
