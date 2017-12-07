package web2017.team9.domain;

import java.util.Date;

/**
 * Created by WSF on 2017/12/7.
 */
public class Coach {
    private int coachId;
    private String coachName;
    private Date coachBirth;
    private Date coachEntrydate;
    private boolean isoccupy;
    private String gender;

    @Override
    public String toString() {
        return "Coach{" +
                "coachId=" + coachId +
                ", coachName='" + coachName + '\'' +
                ", coachBirth=" + coachBirth +
                ", coachEntrydate=" + coachEntrydate +
                ", isoccupy=" + isoccupy +
                ", gender='" + gender + '\'' +
                '}';
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getCoachId() {
        return coachId;
    }

    public void setCoachId(int coachId) {
        this.coachId = coachId;
    }

    public String getCoachName() {
        return coachName;
    }

    public void setCoachName(String coachName) {
        this.coachName = coachName;
    }


    public Date getCoachBirth() {
        return coachBirth;
    }

    public void setCoachBirth(Date coachBirth) {
        this.coachBirth = coachBirth;
    }

    public Date getCoachEntrydate() {
        return coachEntrydate;
    }

    public void setCoachEntrydate(Date coachEntrydate) {
        this.coachEntrydate = coachEntrydate;
    }

    public boolean isIsoccupy() {
        return isoccupy;
    }

    public void setIsoccupy(boolean isoccupy) {
        this.isoccupy = isoccupy;
    }
}
