package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by WSF on 2017/11/19.
 */
@Repository
public class MemberDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public Member getMemberByMemberName(final String memberName){
        final Member member = new Member();
        String sql = "select * from t_member where member_name=?";
        jdbcTemplate.query(sql,  new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                member.setAddress(resultSet.getString("address"));
                member.setAge(resultSet.getInt("age"));
                member.setAvatar(resultSet.getString("avatar"));
                member.setIDNumber(resultSet.getString("ID_number"));
                member.setMemberId(resultSet.getInt("member_id"));
                member.setMemberName(memberName);
                member.setMoney(resultSet.getFloat("money"));
                member.setSex(resultSet.getString("sex"));
                member.setPassword(resultSet.getString("password"));
                member.setTel(resultSet.getString("tel"));
                member.setWeight(resultSet.getFloat("weight"));
            }
        },memberName);
        return member;
    }

    public Member getMemberByMemberId(final int memberId){
        final Member member = new Member();
        String sql = "select * from t_member where member_id=?";
        jdbcTemplate.query(sql,  new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                member.setAddress(resultSet.getString("address"));
                member.setAge(resultSet.getInt("age"));
                member.setAvatar(resultSet.getString("avatar"));
                member.setIDNumber(resultSet.getString("ID_number"));
                member.setMemberId(memberId);
                member.setMemberName(resultSet.getString("member_name"));
                member.setMoney(resultSet.getFloat("money"));
                member.setSex(resultSet.getString("sex"));
                member.setPassword(resultSet.getString("password"));
                member.setTel(resultSet.getString("tel"));
                member.setWeight(resultSet.getFloat("weight"));
            }
        },memberId);
        return member;
    }
    public List<Member> getAllMember(){
        final List<Member> memberList = new ArrayList<Member>();
        String sql = "select * from t_member";
        return jdbcTemplate.queryForObject(sql, new RowMapper<List<Member>>() {
            @Override
            public List<Member> mapRow(ResultSet resultSet, int i) throws SQLException {
                do {
                    Member member = new Member();
                    member.setMemberId(resultSet.getInt("member_id"));
                    member.setWeight(resultSet.getFloat("weight"));
                    member.setTel(resultSet.getString("tel"));
                    member.setPassword(resultSet.getString("password"));
                    member.setSex(resultSet.getString("sex"));
                    member.setMoney(resultSet.getFloat("money"));
                    member.setIDNumber(resultSet.getString("ID_number"));
                    member.setMemberName(resultSet.getString("member_name"));
                    member.setAddress(resultSet.getString("address"));
                    member.setAge(resultSet.getInt("age"));
                    memberList.add(member);
                }while(resultSet.next());
                return memberList;
            }
        });
    }
}
