package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beans.Song;
import com.dao.SongDao;

import java.lang.*;

@Controller
public class SongController {
	
	@Autowired
	SongDao dao;
	
	@RequestMapping(value="/submit", method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("c") Song c) {
		String name = request.getParameter("name");
		String duration = request.getParameter("duration");
		String artist = request.getParameter("artist");
				
		c.setName(name);
		c.setDuration(duration);
		c.setArtist(artist);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("display.jsp");
		//mv.addObject("result",total_fare); 
		
		dao.save(c);
		
		return mv;
	}
	
}
