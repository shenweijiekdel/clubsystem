package web2017.team9.domain;

import java.util.Date;
import java.util.List;

/**
 * Created by WSF on 2017/11/18.
 */
public class Game {
    private String gameId;
    private String title;
    private String address;
    private String time;

    private Blue blue;
    private Red red;
    private Type type;

    @Override
    public String toString() {
        return "Game{" +
                "gameId='" + gameId + '\'' +
                ", title='" + title + '\'' +
                ", address='" + address + '\'' +
                ", time='" + time + '\'' +
                ", blue=" + blue +
                ", red=" + red +
                ", type=" + type +
                '}';
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Blue getBlue() {
        return blue;
    }

    public void setBlue(Blue blue) {
        this.blue = blue;
    }

    public Red getRed() {
        return red;
    }

    public void setRed(Red red) {
        this.red = red;
    }

    public String getGameId() {
        return gameId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }


}
