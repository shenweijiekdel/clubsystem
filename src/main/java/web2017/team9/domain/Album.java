package web2017.team9.domain;

import java.util.List;

public class Album {
    private int id;
    private List<Photo> photos;

    @Override
    public String toString() {
        return "Album{" +
                "id=" + id +
                ", photos=" + photos +
                ", name='" + name + '\'' +
                '}';
    }

    public List<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(List<Photo> photos) {
        this.photos = photos;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String  name;
}
