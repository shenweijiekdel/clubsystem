package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import web2017.team9.dao.CommentDao;
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
    public int addMessage(Message message) {
        return messageDao.AddMessage(message);
    }
@Transactional
    public List<Message> findAllMessage() {
        List<Message> messages = messageDao.findAll();
        if(messages != null)
        for (Message msg:messages
             ) {
            msg.setCommentList(commentDao.findCommentByMid(msg.getMessageId()));
        }
        return messages;
    }

    public Message findMessageById(int messageId) {
        Message message =  messageDao.findMessageById(messageId);
        List<Comment> comments = commentDao.findCommentByMid(messageId);
        message.setCommentList(comments);
        return message;
    }

    public int addComment(Comment comment) {
        return commentDao.addComment(comment);
    }

    public List<Comment> findCommentByMid(int messageId) {
        return commentDao.findCommentByMid(messageId);
    }
@Transactional
    public int deleteMessageById(int messageId) {

        return  messageDao.deleteById(messageId) + commentDao.deleteByMid(messageId);
    }


    public int deleteCommentByCid(int commentId) {
        return commentDao.deleteById(commentId);
    }
}
