package web2017.team9.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import web2017.team9.dao.PictureDao;
import web2017.team9.domain.Album;
import web2017.team9.domain.Photo;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class PictureService {
    @Autowired
    private PictureDao pictureDao;

    public List<Album> findAll() {
        List<Album> albums =  pictureDao.findAllAlbum();
        for (Album album:albums
             ) {
            album.setPhotos(pictureDao.findPhotosByAlbumId(album.getId()));

        }
        return albums;
    }

    public int createAlbum(String name) {
        return pictureDao.addAlbum(name);
    }

    public List<Photo> findPhotosByAlbumId(int albumId) {
        return pictureDao.findPhotosByAlbumId(albumId);
    }
@Transactional
    public void addPhotoByAlbumId(MultipartFile photo, int albumId, String path, String filename) throws Exception{
        pictureDao.addPhotoByAlbumId(filename,albumId);

        photo.transferTo(new File(path + filename));

}
}
