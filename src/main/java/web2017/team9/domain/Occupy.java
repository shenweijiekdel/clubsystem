package web2017.team9.domain;

/**
 * Created by WSF on 2017/12/7.
 */
public class Occupy {
    private int occupyId;
    private Member member;
    private Coach coach;

    @Override
    public String toString() {
        return "Occupy{" +
                "occupyId=" + occupyId +
                ", member=" + member +
                ", coach=" + coach +
                '}';
    }

    public int getOccupyId() {
        return occupyId;
    }

    public void setOccupyId(int occupyId) {
        this.occupyId = occupyId;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Coach getCoach() {
        return coach;
    }

    public void setCoach(Coach coach) {
        this.coach = coach;
    }
}
