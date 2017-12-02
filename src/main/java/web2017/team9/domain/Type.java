package web2017.team9.domain;

/**
 * Created by WSF on 2017/11/22.
 */
public class Type {
    private String typeId;
    private int up;
    private int down;
    private String typeName;

    @Override
    public String toString() {
        return "Type{" +
                "type_id='" + typeId+ '\'' +
                ", up=" + up +
                ", down=" + down +
                ", typeName='" + typeName + '\'' +
                '}';
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public int getUp() {
        return up;
    }

    public void setUp(int up) {
        this.up = up;
    }

    public int getDown() {
        return down;
    }

    public void setDown(int down) {
        this.down = down;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
