package com.krishantha.eventManager.repository;

import java.util.List;

import com.krishantha.eventManager.model.Event;

public interface EventRepository {

	Event save(Event event);
	
	List<Event> fetchAllEvents();
}
