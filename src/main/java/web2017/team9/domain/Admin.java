package web2017.team9.domain;

/**
 * Created by Think on 2017/12/9.
 */
public class Admin {
    private int adminId;
    private String adminName;
    private String password;

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAdminId() {

        return adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public String getPassword() {
        return password;
    }
}
