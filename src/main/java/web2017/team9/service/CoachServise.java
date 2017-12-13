package web2017.team9.service;

import com.sun.istack.internal.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import web2017.team9.dao.CoachDao;
import web2017.team9.domain.Coach;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by WSF on 2017/12/11.
 */
@Service
public class CoachServise {
    @Autowired
    private CoachDao coachDao;
    @Transactional(rollbackFor = Throwable.class)
    public void addCoach(Coach coach, String path, String filename, MultipartFile pictrue) throws IOException{
        if (pictrue != null){
            pictrue.transferTo(new File(path + filename));
        }

        coachDao.addCoach(coach);
    }
    public void updateCoach(Coach coach){
        coachDao.updateCoach(coach);
    }
    public void deleteCoach(int coachId) {
        coachDao.deleteCoach(coachId);
    }
    public void updateCoachOccupy(int coachId,boolean isOccupy){
        coachDao.updateCoachOccupy(coachId,isOccupy);
    }
    public Coach getCoachById(int coachId) {
        Coach coach;
        try {
            coach = coachDao.getCoachById(coachId);
        }catch (Exception e){
            coach = null;
        }
        return coach;
    }
    public List<Coach> getAllCoach() {
        List<Coach> coachList;
        try{
            coachList = coachDao.getAllCoach();
        }catch (Exception e){
            coachList = null;
        }
        return  coachList;
    }
    public List<Coach> getCoachByOccupy(boolean occupy){
        List<Coach> coachList;
        try {
            coachList = coachDao.getCoachByOccupy(occupy);
        }catch (Exception e){
            coachList = null;
        }
        return coachList;
    }

}
