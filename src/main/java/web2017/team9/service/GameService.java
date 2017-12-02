package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.GameDao;
import web2017.team9.dao.MemberDao;
import web2017.team9.domain.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by WSF on 2017/11/19.
 */
@Service
public class GameService {
    @Autowired
    private GameDao gameDao;
    @Autowired
    private MemberDao memberDao;
    public void addGames(Game game,Blue blue,Red red,Type type){
        Type type1 = gameDao.getTypeByTypeName(type.getTypeName());
        int blueTotal = blue.getBlueFirstScore()+blue.getBlueSecondScore()+blue.getBlueThirdScore();
        int redTotal = red.getRedFirstScore()+red.getRedSecondScore()+red.getRedThirdScore();
        String blueStatus = null;
        String redStatus = null;
        String win = "胜";
        String lose = "败";
        if (redTotal>blueTotal){
            redStatus = win;
            blueStatus = lose;
        }else if (redTotal<blueTotal){
            redStatus = lose;
            blueStatus = win;
        }else{
            int redNum = 0;
            int blueNum = 0;
            if(red.getRedFirstScore()>blue.getBlueFirstScore()){
                redNum++;
            }else{
                blueNum++;
            }
            if(red.getRedSecondScore()>blue.getBlueSecondScore()){
                redNum++;
            }else{
                blueNum++;
            }
            if(red.getRedThirdScore()>blue.getBlueThirdScore()){
                redNum++;
            }else{
                blueNum++;
            }
            if (redNum>blueNum){
                redStatus = win;
                blueStatus = lose;
            }else{
                redStatus = lose;
                blueStatus = win;
            }
        }
        red.setRedTotal(redTotal);
        red.setRedStatus(redStatus);
        blue.setBlueTotal(blueTotal);
        blue.setBlueStatus(blueStatus);
        game.setBlue(blue);
        game.setRed(red);
        game.setType(type1);
        gameDao.addGame(game);
        gameDao.addRed(red);
        gameDao.addBlue(blue);
    }
    public void updateGames(Game game,Blue blue,Red red,Type type){
        Type type1 = gameDao.getTypeByTypeName(type.getTypeName());
        int blueTotal = blue.getBlueFirstScore()+blue.getBlueSecondScore()+blue.getBlueThirdScore();
        int redTotal = red.getRedFirstScore()+red.getRedSecondScore()+red.getRedThirdScore();
        String blueStatus = null;
        String redStatus = null;
        String win = "胜";
        String lose = "败";
        if (redTotal>blueTotal){
            redStatus = win;
            blueStatus = lose;
        }else if (redTotal<blueTotal){
            redStatus = lose;
            blueStatus = win;
        }else{
            int redNum = 0;
            int blueNum = 0;
            if(red.getRedFirstScore()>blue.getBlueFirstScore()){
                redNum++;
            }else{
                blueNum++;
            }
            if(red.getRedSecondScore()>blue.getBlueSecondScore()){
                redNum++;
            }else{
                blueNum++;
            }
            if(red.getRedThirdScore()>blue.getBlueThirdScore()){
                redNum++;
            }else{
                blueNum++;
            }
            if (redNum>blueNum){
                redStatus = win;
                blueStatus = lose;
            }else{
                redStatus = lose;
                blueStatus = win;
            }
        }
        red.setRedTotal(redTotal);
        red.setRedStatus(redStatus);
        blue.setBlueTotal(blueTotal);
        blue.setBlueStatus(blueStatus);
        game.setBlue(blue);
        game.setRed(red);
        game.setType(type1);
        gameDao.updateBlue(blue);
        gameDao.updateRed(red);
        gameDao.updateGame(game);
    }
    public List<Type> getAllType(){
        List<Type> typeList = new ArrayList<Type>();
        typeList = gameDao.getAllType();
        return typeList;
    }
    public List<Game> getAllGames(){
        List<Game> gameList;
        try{
            gameList = gameDao.getAllGames();
        }catch (Exception e){
            gameList = null;
            e.printStackTrace();
        }
        return gameList;
    }
    public Game getGameByGameId(String gameId){
       Game game = gameDao.getGameByGameId(gameId);
       return game;
    }
    public void deleteGameByGameId(String gameId){
        Game game = gameDao.getGameByGameId(gameId);
        gameDao.deleteRedByRedId(game.getRed().getRedId());
        gameDao.deleteRedByBlueId(game.getBlue().getBlueId());
        gameDao.deleteGameByGameId(gameId);
    }
}
