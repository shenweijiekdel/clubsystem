package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.MessageDao;
import web2017.team9.domain.Message;

import java.util.List;

@Service
public class MessageService {
    @Autowired
    private MessageDao messageDao;
    public int addMessage(Message message) {
        return messageDao.AddMessage(message);
    }

    public List<Message> findAllMessage() {
        return messageDao.findAll();
    }
}
