package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by WSF on 2017/11/19.
 */
@Repository
public class MemberDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Member getMemberByMemberName(final String memberName) {
        final Member member = new Member();
        String sql = "select * from t_member where member_name=?";
        jdbcTemplate.query(sql, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                member.setAddress(resultSet.getString("address"));
                member.setBirthday(resultSet.getDate("birthday"));
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
        }, memberName);
        if (member.getMemberName() == null)
            return null;
        return member;
    }

    public Member getMemberByMemberId(final int memberId) {
        final Member member = new Member();
        String sql = "select * from t_member where member_id=?";
        jdbcTemplate.query(sql, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                member.setAddress(resultSet.getString("address"));
                member.setBirthday(resultSet.getDate("birthday"));
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
        }, memberId);
        return member;
    }

    public List<Member> getAllMember() {
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
                    member.setBirthday(resultSet.getDate("birthday"));
                    memberList.add(member);
                } while (resultSet.next());
                return memberList;
            }
        });
    }
   /* public int getMatchCount(String memberName,String password){
        String sqlStr = "SELECT count(*) FROM t_member WHERE member_name =? and password=?";
        Object args[] = new Object[]{memberName,password};
        return jdbcTemplate.queryForObject(sqlStr,args,Integer.class);
    }*/

    //会员注册
    public int registerMember(Member member) {
        String sql = "INSERT INTO t_member(member_name,password,sex,birthday,ID_number,address,tel) VALUES(?,?,?,?,?,?,?)";
        Object[] args = new Object[]{
                member.getMemberName(), member.getPassword(), member.getSex(),
                member.getBirthday(), member.getIDNumber(), member.getAddress(), member.getTel()
        };
       return  jdbcTemplate.update(sql, args);
    }

    public Member login(String memberName, String password) {
        String sqlStr = "SELECT * FROM t_member WHERE member_name = ? AND password=?";
        final Member member = new Member();
        Object[] args = new Object[]{memberName, password};


        jdbcTemplate.query(sqlStr, args,
                new RowCallbackHandler() {
                    @Override
                    public void processRow(ResultSet rs) throws SQLException {
                        member.setMemberId(rs.getInt(1));
                        member.setMemberName(rs.getString(2));
                        member.setPassword(rs.getString(3));
                        member.setSex(rs.getString(4));
                        member.setBirthday(rs.getDate(5));
                        member.setIDNumber(rs.getString(6));
                        member.setAddress(rs.getString(7));
                        member.setTel(rs.getString(8));
                        member.setAvatar(rs.getString(9));
                        member.setMoney(rs.getFloat(10));
                        member.setWeight(rs.getFloat(11));
                    }
                });
        if (member.getMemberName() == null)
            return null;
        return member;
    }

    public int updateMemberInfo(Member member) {
        System.out.println(member);
        ArrayList<Object> objects = new ArrayList<Object>();
        String sql = "update t_member set sex=?";
        objects.add(member.getSex());
        if (member.getBirthday() != null){
            sql += ",birthday=?";
            objects.add(member.getBirthday());

        }
        if (!"".equals(member.getIDNumber())) {

            sql += ",ID_number=?";
            objects.add(member.getIDNumber());
        }
        if (!"".equals(member.getAddress())) {
            sql += ",address=?";
            objects.add(member.getAddress());

        }
        if (!"".equals(member.getTel())) {
            sql += ",tel=?";
            objects.add(member.getTel());
        }
        if (member.getAvatar() != null) {
            sql += ",avatar=?";
            objects.add(member.getAvatar());
        }
        sql += "WHERE member_id=?";
        objects.add(member.getMemberId());
        return jdbcTemplate.update(sql, objects.toArray());
    }
}
