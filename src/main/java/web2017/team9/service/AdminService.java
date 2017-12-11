package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.AdminDao;
import web2017.team9.domain.Admin;

/**
 * Created by Think on 2017/12/9.
 */
@Service
public class AdminService {
    @Autowired
    private AdminDao adminDao;

    public Boolean hasMatchCount(String adminName,String password){
        int hasMatchCount = adminDao.hasMatchCount(adminName, password);
        return hasMatchCount>0;
    }
    public Admin findAdminByAdminName(String adminName){ return adminDao.findAdminByAdminName(adminName);}
}
