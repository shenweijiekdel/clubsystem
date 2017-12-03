package web2017.team9.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import web2017.team9.domain.Album;
import web2017.team9.domain.Photo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class PictureDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public List<Album> findAllAlbum() {
        try {
            return jdbcTemplate.queryForObject("SELECT * FROM  t_photoalbum", new RowMapper<List<Album>>() {
                @Override
                public List<Album> mapRow(ResultSet resultSet, int i) throws SQLException {
                    List<Album> albums = new ArrayList<Album>();
                    do {
                        Album album = new Album();
                        album.setId(resultSet.getInt(1));
                        album.setName(resultSet.getString(2));
                        albums.add(album);
                    } while (resultSet.next());
                    return albums;
                }
            });
        }catch (EmptyResultDataAccessException e){
            return null;
        }
    }

    public int addAlbum(String name) {

        return jdbcTemplate.update("INSERT INTO t_photoalbum VALUES (null,?)",name);
    }

    public List<Photo> findPhotosByAlbumId(int albumId) {
        Object obj[] = new Object[1];
        obj[0] = albumId;
        try {
            return jdbcTemplate.queryForObject("select * from t_photo where photoalbum_id=?", obj, new RowMapper<List<Photo>>() {
                @Override
                public List<Photo> mapRow(ResultSet resultSet, int i) throws SQLException {
                    List<Photo> photos = new ArrayList<Photo>();
                    do {
                        Photo photo = new Photo();
                        photo.setPhotoId(resultSet.getInt(1));
                        photo.setSrc(resultSet.getString(2));
                        photo.setPhotoAlbumId(resultSet.getInt(3));
                        photos.add(photo);
                    } while (resultSet.next());
                    return photos;
                }
            });
        } catch (EmptyResultDataAccessException e){
            return null;
        }
    }

    public int addPhotoByAlbumId(String src,int albumId) {
        return jdbcTemplate.update("INSERT into t_photo VALUE (null,?,?)",src,albumId);
    }
}
