package web2017.team9.domain;

import java.util.List;

/**
 * Created by WSF on 2017/11/18.
 */
public class PhotoAlbum {
    private int photoalbumId;
    private String photoalbumName;
    private List<Photo> photoList;

    public int getPhotoalbumId() {
        return photoalbumId;
    }

    public void setPhotoalbumId(int photoalbumId) {
        this.photoalbumId = photoalbumId;
    }

    public String getPhotoalbumName() {
        return photoalbumName;
    }

    public void setPhotoalbumName(String photoalbumName) {
        this.photoalbumName = photoalbumName;
    }

    public List<Photo> getPhotoList() {
        return photoList;
    }

    public void setPhotoList(List<Photo> photoList) {
        this.photoList = photoList;
    }
}
