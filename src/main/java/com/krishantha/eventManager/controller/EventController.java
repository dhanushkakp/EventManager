package com.krishantha.eventManager.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.krishantha.eventManager.model.Event;
import com.krishantha.eventManager.service.EventService;

@Controller
@SessionAttributes("event")
public class EventController {

	@Autowired
	private EventService eventService;

	@RequestMapping(value = "/getEvents", method = RequestMethod.GET)
	public String getEvents(Model model) {
		
		List<Event> events = eventService.fetchAllEvents();
		model.addAttribute("events",events);
		return "getEvents";
	}

	@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
	public String getEvent(Model model) {
		Event event = new Event();
		event.setEventName("Wedding");
		model.addAttribute("event", event);
		return "addEvent";

	}

	@RequestMapping(value = "/addEvent", method = RequestMethod.POST)
	public String updateEvent(@Valid @ModelAttribute("event") Event event, BindingResult results) {
		if (results.hasErrors()) {
			System.out.println("Error occured");
			return "addEvent";
		} else {
			eventService.save(event);
			return "redirect:addActivity.html";
		}
	}

}
