package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Coach;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by WSF on 2017/12/7.
 */
@Repository
public class CoachDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 增加教练信息
     *
     * @param coach
     */
    public void addCoach(Coach coach) {
        String sql = "insert into t_coach(coach_name,coach_birth,coach_entrydate,gender,picture) values(?,?,?,?,?)";
        Object[] args = new Object[]{coach.getCoachName(), coach.getCoachBirth(), coach.getCoachEntrydate(), coach.getGender(),coach.getPicture()};
        jdbcTemplate.update(sql, args);
    }

    /**
     * 修改教练信息
     * @param coach
     */
    public void updateCoach(Coach coach){
        String sql = "update t_coach set coach_name=?,coach_birth=?,coach_entrydate=?,gender=? where coach_id=?";
        Object[] args = new Object[]{coach.getCoachName(), coach.getCoachBirth(), coach.getCoachEntrydate(), coach.getGender(),coach.getCoachId()};
        jdbcTemplate.update(sql, args);
    }

    /**
     * 根据id删除教练信息
     *
     * @param coachId
     */
    public void deleteCoach(int coachId) {
        String sql = "delete from t_coach where coach_id=?";
        Object[] args = new Object[]{coachId};
        jdbcTemplate.update(sql, args);
    }

    /**
     * 根据id更改教练预约信息
     * @param coachId
     */
    public void updateCoachOccupy(int coachId,boolean isOccupy){
        String sql = "update t_coach set is_occupy=? where coach_id=?";
        Object[] args = new Object[]{isOccupy,coachId};
        jdbcTemplate.update(sql, args);
    }

    /**
     * 根据id获取教练信息
     *
     * @param coachId
     * @return
     */
    public Coach getCoachById(int coachId) {
        final Coach coach = new Coach();
        String sql = "select * from t_coach where coach_id=?";
        Object[] args = new Object[]{coachId};
        RowCallbackHandler rowCallbackHandler = new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                coach.setCoachBirth(resultSet.getDate("coach_birth"));
                coach.setCoachEntrydate(resultSet.getDate("coach_entrydate"));
                coach.setCoachId(resultSet.getInt("coach_id"));
                coach.setCoachName(resultSet.getString("coach_name"));
                coach.setIsoccupy(resultSet.getBoolean("is_occupy"));
                coach.setGender(resultSet.getString("gender"));
                coach.setPicture(resultSet.getString("picture"));
            }
        };
        jdbcTemplate.query(sql, args, rowCallbackHandler);
        return coach;
    }

    /**
     * 获取所有教练信息
     * @return
     */
    public List<Coach> getAllCoach() {
        final List<Coach> coachList = new ArrayList<Coach>();
        String sql = "select * from t_coach";
        RowMapper<List<Coach>> rowMapper = new RowMapper<List<Coach>>() {
            @Override
            public List<Coach> mapRow(ResultSet resultSet, int i) throws SQLException {
                do {
                    Coach coach = new Coach();
                    coach.setCoachId(resultSet.getInt("coach_id"));
                    coach.setCoachBirth(resultSet.getDate("coach_birth"));
                    coach.setCoachEntrydate(resultSet.getDate("coach_entrydate"));
                    coach.setCoachName(resultSet.getString("coach_name"));
                    coach.setIsoccupy(resultSet.getBoolean("is_occupy"));
                    coach.setPicture(resultSet.getString("picture"));
                    coach.setGender(resultSet.getString("gender"));
                    coachList.add(coach);
                } while (resultSet.next());
                return coachList;
            }
        };
        return jdbcTemplate.queryForObject(sql,rowMapper);
    }

    /**
     * 根据预约条件获取教练
     * @param occupy
     * @return
     */
    public List<Coach> getCoachByOccupy(boolean occupy){
        String sql = "select * from t_coach where is_occupy=?";
        Object[] args = new Object[]{occupy};
        final List<Coach> coachList = new ArrayList<Coach>();
        RowMapper<List<Coach>> rowMapper = new RowMapper<List<Coach>>() {
            @Override
            public List<Coach> mapRow(ResultSet resultSet, int i) throws SQLException {
                do {
                    Coach coach = new Coach();
                    coach.setCoachId(resultSet.getInt("coach_id"));
                    coach.setCoachEntrydate(resultSet.getDate("coach_entrydate"));
                    coach.setCoachName(resultSet.getString("coach_name"));
                    coach.setIsoccupy(resultSet.getBoolean("is_occupy"));
                    coach.setGender(resultSet.getString("gender"));
                    coach.setPicture(resultSet.getString("picture"));
                    coach.setCoachBirth(resultSet.getDate("coach_birth"));
                    coachList.add(coach);
                } while (resultSet.next());
                return coachList;
            }
        };
        return jdbcTemplate.queryForObject(sql,args,rowMapper);
    }
}
