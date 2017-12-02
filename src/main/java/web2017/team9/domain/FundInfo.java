package web2017.team9.domain;

import java.util.Date;

/**
 * Created by WSF on 2017/11/18.
 */
public class FundInfo {
    private int fundinfoId;
    private String items;
    private float cost;
    private Date time;

    public int getFundinfoId() {
        return fundinfoId;
    }

    public void setFundinfoId(int fundinfoId) {
        this.fundinfoId = fundinfoId;
    }

    public String getItems() {
        return items;
    }

    public void setItems(String items) {
        this.items = items;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
