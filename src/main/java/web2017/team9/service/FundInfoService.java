package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.FundDao;
import web2017.team9.domain.FundInfo;

import java.util.List;

/**
 * Created by WSF on 2017/12/2.
 */
@Service
public class FundInfoService {
    @Autowired
    private FundDao fundDao;
    public FundInfo getFundAById(int fundId){
        FundInfo fundInfo;
        try{
            fundInfo = fundDao.getFundAById(fundId);
        }catch (Exception e){
            fundInfo = null;
        }
        return fundInfo;
    }
    public List<FundInfo> getAllFundInfo(){
        List<FundInfo> fundInfoList ;
        try{
            fundInfoList = fundDao.getAllFundInfo();
        }catch (Exception e){
            fundInfoList = null;
        }
        return fundInfoList;
    }
    public void addFundInfo(FundInfo fundInfo){
        fundDao.addFundInfo(fundInfo);
    }
    public void updateFundInfo(FundInfo fundInfo){
        fundDao.updateFundInfo(fundInfo);
    }
    public void deleteFundInfoById(int fundInfoId){
        fundDao.deleteFundInfoById(fundInfoId);
    }
}
