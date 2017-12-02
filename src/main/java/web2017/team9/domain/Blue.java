package web2017.team9.domain;

import java.util.List;

/**
 * Created by WSF on 2017/11/19.
 */
public class Blue {
    private String blueId;
    private String blueName;
    private String blueMemberName;
    private int blueFirstScore;
    private int blueSecondScore;
    private int blueThirdScore;
    private int blueTotal;
    private String blueStatus;

    public int getBlueTotal() {
        return blueTotal;
    }

    public void setBlueTotal(int blueTotal) {
        this.blueTotal = blueTotal;
    }

    public String getBlueStatus() {
        return blueStatus;
    }

    public void setBlueStatus(String blueStatus) {
        this.blueStatus = blueStatus;
    }

    @Override
    public String toString() {
        return "Blue{" +
                "blueId='" + blueId + '\'' +
                ", blueName='" + blueName + '\'' +
                ", blueMemberName='" + blueMemberName + '\'' +
                ", blueFirstScore=" + blueFirstScore +
                ", blueSecondScore=" + blueSecondScore +
                ", blueThirdScore=" + blueThirdScore +
                '}';
    }

    public String getBlueMemberName() {
        return blueMemberName;
    }

    public void setBlueMemberName(String blueMemberName) {
        this.blueMemberName = blueMemberName;
    }

    public String getBlueId() {
        return blueId;
    }

    public void setBlueId(String blueId) {
        this.blueId = blueId;
    }

    public String getBlueName() {
        return blueName;
    }

    public void setBlueName(String blueName) {
        this.blueName = blueName;
    }


    public int getBlueFirstScore() {
        return blueFirstScore;
    }

    public void setBlueFirstScore(int blueFirstScore) {
        this.blueFirstScore = blueFirstScore;
    }

    public int getBlueSecondScore() {
        return blueSecondScore;
    }

    public void setBlueSecondScore(int blueSecondScore) {
        this.blueSecondScore = blueSecondScore;
    }

    public int getBlueThirdScore() {
        return blueThirdScore;
    }

    public void setBlueThirdScore(int blueThirdScore) {
        this.blueThirdScore = blueThirdScore;
    }


}
