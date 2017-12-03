package web2017.team9.domain;

/**
 * Created by WSF on 2017/11/18.
 */
public class Photo {
    private int photoId;
    private String src;
    private int photoAlbumId;

    @Override
    public String toString() {
        return "Photo{" +
                "photoId=" + photoId +
                ", src='" + src + '\'' +
                ", photoAlbumId=" + photoAlbumId +
                '}';
    }

    public int getPhotoAlbumId() {
        return photoAlbumId;
    }

    public void setPhotoAlbumId(int photoAlbumId) {
        this.photoAlbumId = photoAlbumId;
    }

    public int getPhotoId() {
        return photoId;
    }

    public void setPhotoId(int photoId) {
        this.photoId = photoId;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }
}
