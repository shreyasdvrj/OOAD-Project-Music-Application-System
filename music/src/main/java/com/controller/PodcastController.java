package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beans.Podcast;
import com.dao.PodcastDao;

@Controller
public class PodcastController {
	@Autowired
	PodcastDao dao;
	
	@RequestMapping(value="/submitPodcast", method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("c") Podcast c) {
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String episode = request.getParameter("episodes");
		String artist = request.getParameter("artist");
				
		c.setName(name);
		c.setDate(date);
		c.setEpisode(episode);
		c.setArtist(artist);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("displayPodcast.jsp");
		//mv.addObject("result",total_fare); 
		
		dao.save(c);
		
		return mv;
	}
}
