package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Think on 2017/12/9.
 */
@Repository
public class AdminDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int hasMatchCount(String adminName, String password) {
        String sqlStr = "SELECT count(*) FROM t_admin WHERE admin_name=? and password=?";
        Object[] args = new Object[]{adminName, password};
        return jdbcTemplate.queryForObject(sqlStr, args, Integer.class);
    }

    public Admin findAdminByAdminName(final String adminName) {
        String sqlStr = "SELECT admin_id,admin_name FROM t_admin WHERE admin_name=?";
        final Admin admin = new Admin();
        Object[] args = new Object[]{adminName};
        jdbcTemplate.query(sqlStr, args,
                new RowCallbackHandler() {
                    @Override
                    public void processRow(ResultSet rs) throws SQLException {
                        admin.setAdminId(rs.getInt("admin_id"));
                        admin.setAdminName(rs.getString("admin_name"));
                    }
                });
        return admin;
    }
}
