package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.List;
import java.util.UUID;

/**
 * Created by WSF on 2017/11/19.
 */
@Repository
public class GameDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    private MemberDao memberDao;
    //添加红队信息
    public void addRed(Red red){
        String sql = "insert into t_red(red_id,red_name,member_name,red_firstscore,red_secondscore,red_thirdscore,red_total,red_status) values(?,?,?,?,?,?,?,?)";
        Object[] args = new Object[]{red.getRedId(),red.getRedName(),red.getRedMemberName(),red.getRedFirstScore(),red.getRedSecondScore(),red.getRedThirdScore(),red.getRedTotal(),red.getRedStatus()};
        jdbcTemplate.update(sql,args);
    }
    //更新红队信息
    public void updateRed(Red red){
        String sql = "update t_red set red_name=?,member_name=?,red_firstscore=?,red_secondscore=?,red_thirdscore=?,red_total=?,red_status=? WHERE red_id=?";
        Object[] args = new Object[]{red.getRedName(),red.getRedMemberName(),red.getRedFirstScore(),red.getRedSecondScore(),red.getRedThirdScore(),red.getRedTotal(),red.getRedStatus(),red.getRedId()};
        jdbcTemplate.update(sql,args);
    }
    //更新蓝队信息
    public void updateBlue(Blue blue){
        String sql = "update t_blue set blue_name=?,member_name=?,blue_firstscore=?,blue_secondscore=?,blue_thirdscore=?,blue_total=?,blue_status=? WHERE blue_id=?";
        Object[] args = new Object[]{blue.getBlueName(),blue.getBlueMemberName(),blue.getBlueFirstScore(),blue.getBlueSecondScore(),blue.getBlueThirdScore(),blue.getBlueTotal(),blue.getBlueStatus(),blue.getBlueId()};
        jdbcTemplate.update(sql,args);
    }
    //添加蓝队信息
    public void addBlue(Blue blue){
        String sql = "insert into t_blue(blue_id,blue_name,member_name,blue_firstscore,blue_secondscore,blue_thirdscore,blue_total,blue_status) values(?,?,?,?,?,?,?,?)";
        Object[] args = new Object[]{blue.getBlueId(),blue.getBlueName(),blue.getBlueMemberName(),blue.getBlueFirstScore(),blue.getBlueSecondScore(),blue.getBlueThirdScore(),blue.getBlueTotal(),blue.getBlueStatus()};
        jdbcTemplate.update(sql,args);
    }
    //添加比赛记录
    public void addGame(Game game){
        String sql = "insert into t_game(game_id,title, address,time,red_id,blue_id,type_id) VALUES (?,?,?,?,?,?,?)";
        Object[] args = new Object[]{game.getGameId(),game.getTitle(),game.getAddress(),game.getTime(),game.getRed().getRedId(),game.getBlue().getBlueId(),game.getType().getTypeId()};
        jdbcTemplate.update(sql,args);
    }
    //更新比赛记录
    public void updateGame(Game game){
        String sql = "update t_game set title=?, address=?,time=?,red_id=?,blue_id=?,type_id=? where game_id=?";
        Object[] args = new Object[]{game.getTitle(),game.getAddress(),game.getTime(),game.getRed().getRedId(),game.getBlue().getBlueId(),game.getType().getTypeId(),game.getGameId()};
        jdbcTemplate.update(sql,args);
    }
    public void deleteRedByRedId(String redId){
        String sql = "delete from t_red where red_id=?";
        jdbcTemplate.update(sql,redId);
    }
    public void deleteRedByBlueId(String blueId){
        String sql = "delete from t_blue where blue_id=?";
        jdbcTemplate.update(sql,blueId);
    }
    //根据ID删除比赛记录
    public void deleteGameByGameId(String gameId){
        String sql = "delete from t_game where game_id=?";
        jdbcTemplate.update(sql,gameId);
    }
    //获得所有比赛类型
    public List<Type> getAllType(){
        final List<Type> typeList = new ArrayList<Type>();
        String sql = "select * from t_type";
        return jdbcTemplate.queryForObject(sql, new RowMapper<List<Type>>() {
            @Override
            public List<Type> mapRow(ResultSet resultSet, int i) throws SQLException {
                do{
                    Type type = new Type();
                    type.setTypeId(resultSet.getString("type_id"));
                    type.setTypeName(resultSet.getString("type_name"));
                    type.setDown(resultSet.getInt("down"));
                    type.setUp(resultSet.getInt("up"));
                    typeList.add(type);
                }while (resultSet.next());
                return typeList;
            }
        });
    }
    //根据类型名称获得比赛类型
    public Type getTypeByTypeName(final String typeName){
        String sql = "select * from t_type where type_name=?";
        final Type type = new Type();
        RowCallbackHandler rowCallbackHandler = new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                type.setTypeId(resultSet.getString("type_id"));
                type.setTypeName(typeName);
                type.setUp(resultSet.getInt("up"));
                type.setDown(resultSet.getInt("down"));
            }
        };
        jdbcTemplate.query(sql,rowCallbackHandler,typeName);
        return type;
    }
    //根据ID获得比赛类型
    public Type getTypeByTypeId(final String typeId){
        String sql = "select * from t_type where type_id=?";
        final Type type = new Type();
        RowCallbackHandler rowCallbackHandler = new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                type.setTypeId(typeId);
                type.setTypeName(resultSet.getString("type_name"));
                type.setUp(resultSet.getInt("up"));
                type.setDown(resultSet.getInt("down"));
            }
        };
        jdbcTemplate.query(sql,rowCallbackHandler,typeId);
        return type;
    }
    //根据ID获取红队信息
    public Red getRedById(final String redId){
        final Red red = new Red();
        String sql = "select * from t_red where red_id=?";
        RowCallbackHandler rowCallbackHandler = new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                red.setRedId(redId);
                red.setRedFirstScore(resultSet.getInt("red_firstscore"));
                red.setRedSecondScore(resultSet.getInt("red_secondscore"));
                red.setRedThirdScore(resultSet.getInt("red_thirdscore"));
                red.setRedName(resultSet.getString("red_name"));
                red.setRedMemberName(resultSet.getString("member_name"));
                red.setRedStatus(resultSet.getString("red_status"));
                red.setRedTotal(resultSet.getInt("red_total"));
            }
        };
        jdbcTemplate.query(sql,rowCallbackHandler,redId);
        return red;
    }
    //根据ID获取蓝队信息
    public Blue getBlueIdById(final String blueId){
        final Blue blue = new Blue();
        String sql = "select * from t_blue where blue_id=?";
        RowCallbackHandler rowCallbackHandler = new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                blue.setBlueId(blueId);
                blue.setBlueFirstScore(resultSet.getInt("blue_firstscore"));
                blue.setBlueSecondScore(resultSet.getInt("blue_secondscore"));
                blue.setBlueThirdScore(resultSet.getInt("blue_thirdscore"));
                blue.setBlueName(resultSet.getString("blue_name"));
                blue.setBlueMemberName(resultSet.getString("member_name"));
                blue.setBlueStatus(resultSet.getString("blue_status"));
                blue.setBlueTotal(resultSet.getInt("blue_total"));
            }
        };
        jdbcTemplate.query(sql,rowCallbackHandler,blueId);
        return blue;
    }
    //获取所有比赛信息
    public List<Game> getAllGames(){
        final List<Game> gameList = new ArrayList<Game>();
        String sql = "select * from t_game";
        return jdbcTemplate.queryForObject(sql, new RowMapper<List<Game>>() {
            @Override
            public List<Game> mapRow(ResultSet resultSet, int i) throws SQLException {
                do {
                    Game game = new Game();
                    game.setGameId(resultSet.getString("game_id"));
                    game.setTime(resultSet.getString("time"));
                    game.setAddress(resultSet.getString("address"));
                    game.setTitle(resultSet.getString("title"));
                    Red red = getRedById(resultSet.getString("red_id"));
                    Blue blue = getBlueIdById(resultSet.getString("blue_id"));
                    Type type = getTypeByTypeId(resultSet.getString("type_id"));
                    game.setRed(red);
                    game.setBlue(blue);
                    game.setType(type);
                    gameList.add(game);
                }while (resultSet.next());
                return gameList;
            }
        });
    }
    //根据Id获取比赛信息
    public Game getGameByGameId(final String gameId){
        final Game game = new Game();
        String sql = "select * from t_game where game_id=?";
        RowCallbackHandler rowCallbackHandler = new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                game.setGameId(gameId);
                game.setTitle(resultSet.getString("title"));
                game.setTime(resultSet.getString("time"));
                game.setAddress(resultSet.getString("address"));
                Red red = getRedById(resultSet.getString("red_id"));
                Blue blue = getBlueIdById(resultSet.getString("blue_id"));
                Type type = getTypeByTypeId(resultSet.getString("type_id"));
                game.setRed(red);
                game.setBlue(blue);
                game.setType(type);
            }
        };
        jdbcTemplate.query(sql,rowCallbackHandler,gameId);
        return game;
    }
}
