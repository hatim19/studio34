package com.controller.Impl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by hatim.ali on 3/7/16.
 */

@Controller
public class DataController {


    @RequestMapping(value="/sections/{mediaId}",method= RequestMethod.GET)
    String getPlayerPage(@PathVariable("mediaId") int mediaId, WebRequest request){

        return "playerPage" ;

    }


}
