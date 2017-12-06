package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public int AddMessage(){
    return 0;
    }
}
