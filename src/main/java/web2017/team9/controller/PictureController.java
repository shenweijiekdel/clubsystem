package web2017.team9.controller;

import javafx.application.Application;
import jdk.nashorn.internal.runtime.Context;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import web2017.team9.domain.Album;
import web2017.team9.domain.Photo;
import web2017.team9.service.PictureService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class PictureController {
    @Autowired
    private PictureService pictureService;

    @RequestMapping("/backManageAlbums")
    public ModelAndView displayAlbums(Model model) {
        List<Album> albums = pictureService.findAll();
        model.addAttribute("albums", albums);
        return new ModelAndView("backManageAlbums");
    }

    @RequestMapping("/backCreateAlbumJsp")
    public ModelAndView createAlbumJsp(Model model) {
        return new ModelAndView("/backCreateAlbum");
    }

    @RequestMapping("/backCreateAlbum")
    public ModelAndView createAlbum(Model model, String albumName) {
        pictureService.createAlbum(albumName);
        return new ModelAndView("redirect:/backManageAlbums.html");
    }
    @RequestMapping("/backManagePhoto")
    public ModelAndView displayPhoto(Model model, int albumId) {
        List<Photo> photos =  pictureService.findPhotosByAlbumId(albumId);
       model.addAttribute("photos",photos);
       model.addAttribute("albumId",albumId);
        return new ModelAndView("backManagePhotos");
    }
    @RequestMapping("/backAddPhotoJsp")
    public ModelAndView addPhotoJsp(Model model,int albumId) {

        model.addAttribute("albumId",albumId);
        return new ModelAndView("backAddPhoto");
    }

    @RequestMapping("/backAddPhoto")
    public ModelAndView addPhoto(Model model,int albumId, @RequestParam MultipartFile  photo) {


        if (!photo.isEmpty()) {
            String filename = photo.getOriginalFilename();
            filename = filename.substring(filename.indexOf('.'));
            String path = this.getClass().getResource("/").getPath();
            path = path.replace("WEB-INF/classes", "images/album");
            filename = UUID.randomUUID().toString() + filename;
            try {
                pictureService.addPhotoByAlbumId( photo,albumId,path,filename);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }

        return new ModelAndView("redirect:backManagePhoto.html?albumId=" + albumId);
    }
}
