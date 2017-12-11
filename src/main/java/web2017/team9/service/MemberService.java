package web2017.team9.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import web2017.team9.dao.MemberDao;
import web2017.team9.domain.Member;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by WSF on 2017/11/19.
 */

@Service
public class MemberService {
    @Autowired
    private MemberDao memberDao;
    public Member getMemberByMemberName(String memberName){
       Member member = memberDao.getMemberByMemberName(memberName);
       return member;
    }
    public Member getMemberByMemberId(int memberId){
        Member member = memberDao.getMemberByMemberId(memberId);
        return member;
    }
    public List<Member> getAllMembers(){
        List<Member> memberList = memberDao.getAllMember();
        return memberList;
    }
    /*public Boolean hasMatchMember(String memberName,String password){
        int matchCount = memberDao.getMatchCount(memberName, password);
        return matchCount>0;

    }*/
    @Test
public void a(){
        Member member  = new Member();
        member.setMemberName("aa");
        Map<Integer,Member> memberMap = new HashMap<Integer, Member>();
        memberMap.put(1,member);
        System.out.println(memberMap.get(1).getMemberName());
        Member m2 = memberMap.get(1);
        m2.setMemberName("bb");
        System.out.println(memberMap.get(1).getMemberName());
        b(m2);
        System.out.println(memberMap.get(1).getMemberName());
}
public void b(Member member){
    member.setMemberName("cc");
}
    //用户注册
    public void registerMember(Member member){memberDao.registerMember(member);}

    public Member login(String memberName, String password) {
        return memberDao.login(memberName,password);
    }

    public int changeUserInfo(Member member, String path, String filename, MultipartFile head, HttpSession session) throws IOException{
        head.transferTo(new File(path + filename));
        member.setMemberId(((Member)session.getAttribute("member")).getMemberId());
        int i =  memberDao.updateMemberInfo(member);
       session.setAttribute("member",memberDao.getMemberByMemberName(member.getMemberName()));
        return i;
    }
    public int changeUserInfo(Member member, HttpSession session){
        member.setMemberId(((Member)session.getAttribute("member")).getMemberId());
        int i =  memberDao.updateMemberInfo(member);
        session.setAttribute("member",memberDao.getMemberByMemberName(member.getMemberName()));
        return i;

    }
}
