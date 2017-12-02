package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.FundInfo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by WSF on 2017/12/2.
 */
@Repository
public class FundDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 根据fundId获取fundInfo
     * @param fundId
     * @return
     */
    public FundInfo getFundAById(final int fundId){
        String sql = "select * from t_fundinfo where fundinfo_id=?";
        Object[] args = new Object[]{fundId};
        final FundInfo fundInfo = new FundInfo();
        jdbcTemplate.query(sql, args, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                fundInfo.setFundinfoId(resultSet.getInt("fundinfo_id"));
                fundInfo.setCost(resultSet.getFloat("cost"));
                fundInfo.setTime(resultSet.getDate("time"));
                fundInfo.setItems(resultSet.getString("items"));
            }
        });
        return fundInfo;
    }

    /**
     * 获取所有的FundInfo
     * @return
     */
    public List<FundInfo> getAllFundInfo(){
        String sql = "select * from t_fundinfo";
       final List<FundInfo> fundInfoList = new ArrayList<FundInfo>();
        RowMapper<List> rowMapper = new RowMapper<List>() {
            @Override
            public List mapRow(ResultSet resultSet, int i) throws SQLException {
                do {
                    FundInfo fundInfo = new FundInfo();
                    fundInfo.setFundinfoId(resultSet.getInt("fundinfo_id"));
                    fundInfo.setCost(resultSet.getFloat("cost"));
                    fundInfo.setTime(resultSet.getDate("time"));
                    fundInfo.setItems(resultSet.getString("items"));
                    fundInfoList.add(fundInfo);
                }while(resultSet.next());
                return fundInfoList;
            }
        };
        return jdbcTemplate.queryForObject(sql,rowMapper);
    }

    /**
     * 增加FundInfo
     * @param fundInfo
     */
    public void addFundInfo(FundInfo fundInfo){
        String sql = "insert into t_fundinfo(items,cost,time) values(?,?,?)";
        Object[] args = new Object[]{fundInfo.getItems(),fundInfo.getCost(),fundInfo.getTime()};
        jdbcTemplate.update(sql,args);
    }

    /**
     * 更新FundInfo
     * @param fundInfo
     */
    public void updateFundInfo(FundInfo fundInfo){
        String sql = "update t_fundinfo set items=?,cost=?,time=? where fundinfo_id=?";
        Object[] args = new Object[]{fundInfo.getItems(),fundInfo.getCost(),fundInfo.getTime(),fundInfo.getFundinfoId()};
        jdbcTemplate.update(sql,args);
    }

    /**
     * 删除FundInfo
     * @param fundInfoId
     */
    public void deleteFundInfoById(int fundInfoId){
        String sql = "delete from t_fundinfo where fundinfo_id=?";
        Object[] args = new Object[]{fundInfoId};
        jdbcTemplate.update(sql,args);
    }
}
