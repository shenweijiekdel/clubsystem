package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web2017.team9.dao.MemberDao;
import web2017.team9.domain.Member;

import java.util.List;

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
}
