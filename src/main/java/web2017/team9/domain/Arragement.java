package web2017.team9.domain;

import web2017.team9.domain.Coach;
import web2017.team9.domain.Member;

import java.util.Date;

/**
 * Created by WSF on 2017/12/13.
 */
public class Arragement {
    private Coach coach;
    private Member member;
    private Date startTime;
    private Date endTime;

    @Override
    public String toString() {
        return "Arragement{" +
                "coach=" + coach +
                ", member=" + member +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                '}';
    }

    public Coach getCoach() {
        return coach;
    }

    public void setCoach(Coach coach) {
        this.coach = coach;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}
