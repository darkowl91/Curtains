package com.home.mvc.controller.bind;

import com.home.model.image.Picture;
import com.home.programm.util.DateEditor;
import com.home.programm.util.PictureEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;

import java.util.Calendar;

@ControllerAdvice
public class GlobalBindingInitializer {

    @InitBinder
    public void binder(WebDataBinder binder) {
        binder.registerCustomEditor(Calendar.class, new DateEditor());
        binder.registerCustomEditor(Picture.class, new PictureEditor());
    }
}
