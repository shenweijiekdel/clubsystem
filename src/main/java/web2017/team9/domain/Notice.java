package web2017.team9.domain;

import java.util.Date;

/**
 * Created by WSF on 2017/12/5.
 */
public class Notice {
    private int noticeId;
    private String noticeTitle;
    private Date noticeDate;
    private String noticeContent;
    private boolean isActivity;

    @Override
    public String toString() {
        return "Notice{" +
                "noticeId=" + noticeId +
                ", noticeTitle='" + noticeTitle + '\'' +
                ", noticeDate=" + noticeDate +
                ", noticeContent='" + noticeContent + '\'' +
                ", isActivity=" + isActivity +
                '}';
    }

    public boolean isActivity() {
        return isActivity;
    }

    public void setActivity(boolean activity) {
        isActivity = activity;
    }

    public int getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(int noticeId) {
        this.noticeId = noticeId;
    }

    public String getNoticeTitle() {
        return noticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    public Date getNoticeDate() {
        return noticeDate;
    }

    public void setNoticeDate(Date noticeDate) {
        this.noticeDate = noticeDate;
    }

    public String getNoticeContent() {
        return noticeContent;
    }

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }
}
