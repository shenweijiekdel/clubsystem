package web2017.team9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.FundInfo;
import web2017.team9.service.FundInfoService;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by WSF on 2017/12/2.
 */
@Controller
public class FundContrller {
    @Autowired
    private FundInfoService fundInfoService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
    @RequestMapping(value = "backManageFund")
    public ModelAndView backManageGames(Model model){
        List<FundInfo> fundInfoList = fundInfoService.getAllFundInfo();
        model.addAttribute("fundInfoList",fundInfoList);
        return new ModelAndView("backManageFund");
    }

    @RequestMapping(value = "backAddFundInfoJsp")
    public ModelAndView backAddFundInfoJsp(){
        return new ModelAndView("backAddFundInfo");
    }

    @RequestMapping(value = "backAddFundInfo")
    public ModelAndView backAddFundInfo(Model model, FundInfo fundInfo){
        fundInfoService.addFundInfo(fundInfo);
        List<FundInfo> fundInfoList = fundInfoService.getAllFundInfo();
        model.addAttribute("fundInfoList",fundInfoList);
        return new ModelAndView("backManageFund");
    }

    @RequestMapping(value = "backDeleteFundInfo")
    public ModelAndView backDeleteFundInfo(HttpServletRequest request,Model model){
        int fundInfoId = Integer.parseInt(request.getParameter("fundinfoId"));
        fundInfoService.deleteFundInfoById(fundInfoId);
        List<FundInfo> fundInfoList = fundInfoService.getAllFundInfo();
        model.addAttribute("fundInfoList",fundInfoList);
        return new ModelAndView("backManageFund");
    }

    @RequestMapping(value = "backUpdateFundInfoJsp")
    public ModelAndView backUpdateFundInfoJsp(HttpServletRequest request,Model model){
        int fundInfoId = Integer.parseInt(request.getParameter("fundinfoId"));
        FundInfo fundInfo = fundInfoService.getFundAById(fundInfoId);
        model.addAttribute("fundInfo",fundInfo);
        return new ModelAndView("backUpdateFundInfo");
    }

    @RequestMapping(value = "backUpdateFundInfo")
    public ModelAndView backUpdateFundInfo(FundInfo fundInfo,Model model){
        fundInfoService.updateFundInfo(fundInfo);
        List<FundInfo> fundInfoList = fundInfoService.getAllFundInfo();
        model.addAttribute("fundInfoList",fundInfoList);
        return new ModelAndView("backManageFund");
    }
    @RequestMapping(value = "backExpendFundInfo")
    public ModelAndView backExpendFundInfo(HttpServletRequest request,Model model){
        String status = request.getParameter("status");
        List<FundInfo> fundInfoList = fundInfoService.getAllStatusFundInfo(status);
        model.addAttribute("fundInfoList",fundInfoList);
        return  new ModelAndView("backExpendFundInfo");
    }

    @RequestMapping(value = "backIncomeFundInfo")
    public ModelAndView backIncomeFundInfo(HttpServletRequest request,Model model){
        String status = request.getParameter("status");
        List<FundInfo> fundInfoList = fundInfoService.getAllStatusFundInfo(status);
        model.addAttribute("fundInfoList",fundInfoList);
        return  new ModelAndView("backIncomeFundInfo");
    }
}
