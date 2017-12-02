package web2017.team9.domain;

import java.util.List;

/**
 * Created by WSF on 2017/11/19.
 */
public class Red {
    private String redId;
    private String redName;
    private String redMemberName;
    private int redFirstScore;
    private int redSecondScore;
    private int redThirdScore;
    private int redTotal;
    private String redStatus;

    public String getRedStatus() {
        return redStatus;
    }

    public void setRedStatus(String redStatus) {
        this.redStatus = redStatus;
    }

    public int getRedTotal() {

        return redTotal;
    }

    public void setRedTotal(int redTotal) {
        this.redTotal = redTotal;
    }

    @Override
    public String toString() {
        return "Red{" +
                "redId='" + redId + '\'' +
                ", redName='" + redName + '\'' +
                ", redMemberName='" + redMemberName + '\'' +
                ", redFirstScore=" + redFirstScore +
                ", redSecondScore=" + redSecondScore +
                ", redThirdScore=" + redThirdScore +
                '}';
    }

    public String getRedMemberName() {
        return redMemberName;
    }

    public void setRedMemberName(String redMemberName) {
        this.redMemberName = redMemberName;
    }

    public String getRedId() {
        return redId;
    }

    public void setRedId(String redId) {
        this.redId = redId;
    }

    public String getRedName() {
        return redName;
    }

    public void setRedName(String redName) {
        this.redName = redName;
    }


    public int getRedFirstScore() {
        return redFirstScore;
    }

    public void setRedFirstScore(int redFirstScore) {
        this.redFirstScore = redFirstScore;
    }

    public int getRedSecondScore() {
        return redSecondScore;
    }

    public void setRedSecondScore(int redSecondScore) {
        this.redSecondScore = redSecondScore;
    }

    public int getRedThirdScore() {
        return redThirdScore;
    }

    public void setRedThirdScore(int redThirdScore) {
        this.redThirdScore = redThirdScore;
    }


}
